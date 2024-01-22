import 'dart:convert';

import 'package:bookforest/features/auth/domain/entities/apple_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'apple_login.g.dart';

@riverpod
AppleLogin appleLogin(AppleLoginRef ref) {
  return AppleLogin();
}

class AppleLogin {
  Future<AppleUser> appleLogin() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: 'dev.bookforest.jn.com',
        redirectUri: Uri.parse(
          'https://flashy-jeweled-parrot.glitch.me/callbacks/sign_in_with_apple',
        ),
      ),
    );

    List<String> jwt = credential.identityToken?.split('.') ?? [];
    String payload = jwt[1];
    payload = base64.normalize(payload);

    final List<int> jsonData = base64.decode(payload);
    final userInfo = jsonDecode(utf8.decode(jsonData));
    return AppleUser.fromMap(map: userInfo);
  }
}
