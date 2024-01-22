// ignore_for_file: avoid_print

import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:bookforest/features/auth/domain/usecases/apple_login.dart';
import 'package:bookforest/features/auth/domain/usecases/kakao_login.dart';
import 'package:bookforest/features/auth/domain/usecases/naver_login.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bookforest/features/auth/domain/entities/enums/login_type.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  Future<User> build() async {
    return const User.logout();
  }

// 일반 로그인
  Future<void> login({
    required String phoneNumber,
    required String password,
  }) async {
    print(phoneNumber);
    print(password);
  }

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
    final kakaoLogin = ref.watch(kakaoLoginProvider);
    try {
      final kakaoUser = await kakaoLogin.kakaoLogin();
      print(kakaoUser);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> _naverLogin() async {
    final naverLogin = ref.watch(naverLoginProvider);
    try {
      final naverUser = await naverLogin.naverLogin();
      print(naverUser);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> _appleLogin() async {
    final appleLogin = ref.watch(appleLoginProvider);
    try {
      final appleUser = await appleLogin.appleLogin();
      print(appleUser);
    } on Exception catch (e) {
      print(e);
    }
  }
}
