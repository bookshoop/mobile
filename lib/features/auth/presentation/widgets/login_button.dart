import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/auth/domain/entities/enums/login_type.dart';
import 'package:bookforest/features/auth/presentation/providers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () async {
            await ref.read(authControllerProvider.notifier).socialLogin(
                  loginType: LoginType.kakao,
                );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              55.size,
            ),
            child: Image.asset(
              'assets/images/login/kakao.png',
              width: 55.size,
              height: 55.size,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            ref.read(authControllerProvider.notifier).socialLogin(
                  loginType: LoginType.naver,
                );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              55.size,
            ),
            child: Image.asset(
              'assets/images/login/naver_login_button.png',
              width: 55.size,
              height: 55.size,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            ref.read(authControllerProvider.notifier).socialLogin(
                  loginType: LoginType.apple,
                );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              55.size,
            ),
            child: Image.asset(
              'assets/images/login/apple_logo.png',
              width: 55.size,
              height: 55.size,
            ),
          ),
        ),
      ],
    );
  }
}
