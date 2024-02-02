import 'dart:convert';
import 'dart:developer';
import 'package:bookforest/core/configs/firebase/firebase_settings.dart';
import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/storage/secure_storage.dart';
import 'package:bookforest/core/utils/constant.dart';
import 'package:bookforest/features/auth/data/dtos/sign_in_data.dart';
import 'package:bookforest/features/auth/data/repositories/auth_repository.dart';
import 'package:bookforest/features/auth/domain/entities/enums/login_type.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'social_login.g.dart';

@Riverpod(keepAlive: true)
SocialLogin socialLogin(SocialLoginRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final storage = ref.watch(storageProvider);

  return SocialLogin(
    authRepository: authRepository,
    storage: storage,
  );
}

class SocialLogin {
  final AuthRepository authRepository;
  final FlutterSecureStorage storage;

  const SocialLogin({
    required this.authRepository,
    required this.storage,
  });

  Future<Login> kakaoLogin() async {
    if (await kakao.isKakaoTalkInstalled()) {
      try {
        await kakao.UserApi.instance.loginWithKakaoTalk();
      } on Exception catch (error) {
        log('카카오톡으로 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        throw Exception();
      }
    } else {
      try {
        await kakao.UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        log('카카오톡으로 로그인 실패 $error');
        throw Exception();
      }
    }
    final user = await kakao.UserApi.instance.me();
    return await _socialLogin(
      socialId: user.id.toString(),
      socialProvider: LoginType.kakao.name,
    );
  }

  Future<Login> appleLogin() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: dotenv.get(
          Config.instance.flavor == 'product'
              ? 'apple_client_id'
              : 'apple_client_id_dev',
        ),
        redirectUri: Uri.parse(
          dotenv.get(
            Config.instance.flavor == 'product'
                ? 'apple_redirect_url'
                : 'apple_redirect_url_dev',
          ),
        ),
      ),
    );

    List<String> jwt = credential.identityToken?.split('.') ?? [];
    String payload = jwt[1];
    payload = base64.normalize(payload);

    final List<int> jsonData = base64.decode(payload);
    final userInfo = jsonDecode(utf8.decode(jsonData));

    return await _socialLogin(
      socialId: userInfo['sub']!,
      socialProvider: LoginType.kakao.name,
    );
  }

  Future<Login> naverLogin() async {
    final result = await FlutterNaverLogin.logIn();
    return await _socialLogin(
      socialId: result.account.id,
      socialProvider: LoginType.kakao.name,
    );
  }

  Future<Login> _socialLogin({
    required String socialId,
    required String socialProvider,
  }) async {
    // ignore: unused_local_variable
    final signInData = SignInData(
      socialId: socialId,
      socialProvider: socialProvider,
      pushToken: FcmSettings.instance.pushToken,
    );

    // final resp = await authRepository.socialLogin(signInData: signInData);
    // storage.write(key: ACCESS_TOKEN, value: resp.token.accessToken);
    // storage.write(key: REFRESH_TOKEN, value: resp.token.refreshToken);
    // return resp.user;

    storage.write(key: ACCESS_TOKEN, value: 'resp.token.accessToken');
    storage.write(key: REFRESH_TOKEN, value: 'resp.token.refreshToken');

    return const Login(id: 1, nickName: '책읽는 고양이');
  }
}
