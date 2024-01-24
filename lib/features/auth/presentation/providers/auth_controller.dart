// ignore_for_file: avoid_print

import 'package:bookforest/features/auth/domain/usecases/social_login.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bookforest/features/auth/domain/entities/enums/login_type.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  User build() {
    return const User.logout();
  }

// 일반 로그인
  // Future<void> login({
  //   required String phoneNumber,
  //   required String password,
  // }) async {
  //   print(phoneNumber);
  //   print(password);
  // }

// 소셜 로그인
  Future<void> socialLogin({
    required LoginType loginType,
  }) async {
    switch (loginType) {
      case LoginType.kakao:
        _kakaoLogin();
        break;
      case LoginType.naver:
        _naverLogin();
        break;
      case LoginType.apple:
        _appleLogin();
        break;
      case LoginType.bookforest:
        break;
      default:
    }
  }

  Future<void> _kakaoLogin() async {
    final socialLogin = ref.watch(socialLoginProvider);
    try {
      final kakaoUser = await socialLogin.kakaoLogin();
      state = kakaoUser;
      print(kakaoUser);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> _naverLogin() async {
    final socialLogin = ref.watch(socialLoginProvider);
    try {
      final naverUser = await socialLogin.naverLogin();
      state = naverUser;
      print(naverUser);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> _appleLogin() async {
    final socialLogin = ref.watch(socialLoginProvider);
    try {
      final appleUser = await socialLogin.appleLogin();
      state = appleUser;
      print(appleUser);
    } on Exception catch (e) {
      print(e);
    }
  }
}
