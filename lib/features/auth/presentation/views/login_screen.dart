import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/auth/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginScreen extends StatelessWidget {
  static String get routeName => '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/common/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 40,
            ),
            Flexible(
              flex: 40,
              child: Image.asset(
                'assets/images/common/logo_horizontal.png',
                height: 60.size,
              ),
            ).animate().fadeIn(),
            const EmptySpace(height: 20),
            Flexible(
              flex: 30,
              child: Material(
                color: Colors.transparent,
                child: Text(
                  '책들이 가득한 공간은\n깊은 숲과 같다는 느낌을 받습니다.\n고요한 나만의 숲에 있는 듯\n책 속에서 편안함을 느끼시길 바랍니다.',
                  style: AppThemeData.bold_15.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ).animate().fadeIn(),
              ),
            ),
            const EmptySpace(height: 30),
            Flexible(
              flex: 100,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 34.size,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.size,
                    vertical: 20.size,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.size),
                  ),
                  child: Column(
                    children: [
                      const EmptySpace(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              height: 1.size,
                            ),
                          ),
                          const EmptySpace(width: 5),
                          Text(
                            '다음 계정으로 계속하기',
                            style: AppThemeData.bold_14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const EmptySpace(width: 5),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              height: 1.size,
                            ),
                          ),
                        ],
                      ),
                      const EmptySpace(height: 40),
                      const LoginButton(),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     context.goNamed(BookShelfScreen.routeName);
                      //   },
                      //   child: Text(
                      //     '비회원으로 시작하기',
                      //     style: AppThemeData.regular_14.copyWith(
                      //       color: AppThemeData.lightGrey,
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                      const EmptySpace(height: 10),
                    ],
                  ),
                ),
              ),
            ).animate().fadeIn(),
          ],
        ),
      ),
    );
  }
}
