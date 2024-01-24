import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/features/auth/presentation/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static String get routeName => '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 1500),
    ).then(
      (value) async {
        if (mounted) {
          context.replaceNamed(LoginScreen.routeName);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/common/background.jpg',
            ),
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 20,
            ),
            Flexible(
              flex: 18,
              child: Image.asset(
                'assets/images/common/logo.png',
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            Material(
              color: Colors.transparent,
              child: Text(
                '책들이 가득한 공간은\n깊은 숲과 같다는 느낌을 받습니다.\n고요한 나만의 숲에 있는 듯\n책 속에서 편안함을 느끼시길 바랍니다.',
                style: AppThemeData.bold_15.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 47,
            ),
          ],
        ),
      ),
    );
  }
}
