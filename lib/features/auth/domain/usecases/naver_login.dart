import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'naver_login.g.dart';

@riverpod
NaverLogin naverLogin(NaverLoginRef ref) {
  return NaverLogin();
}

class NaverLogin {
  Future<NaverAccountResult> naverLogin() async {
    final result = await FlutterNaverLogin.logIn();
    return result.account;
  }
}
