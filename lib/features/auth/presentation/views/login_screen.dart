import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/auth/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

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
                height: expectSize(60),
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
                  horizontal: expectSize(34),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: expectSize(30),
                    vertical: expectSize(20),
                  ),
                  decoration: BoxDecoration(
                    // color: AppThemeData.backGroundColor,
                    borderRadius: BorderRadius.circular(expectSize(15)),
                  ),
                  child: Column(
                    children: [
                      const EmptySpace(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: AppThemeData.lightGrey,
                              color: Colors.white,
                              height: expectSize(1),
                            ),
                          ),
                          const EmptySpace(width: 5),
                          Text(
                            '다음 계정으로 계속하기',
                            style: AppThemeData.bold_14.copyWith(
                              color: Colors.white,
                              // color: AppThemeData.darkGrey,
                            ),
                          ),
                          const EmptySpace(width: 5),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              // color: AppThemeData.lightGrey,
                              height: expectSize(1),
                            ),
                          ),
                        ],
                      ),
                      const EmptySpace(height: 40),
                      const LoginButton(),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          context.goNamed('/');
                        },
                        child: Text(
                          '비회원으로 시작하기',
                          style: AppThemeData.regular_14.copyWith(
                            color: AppThemeData.lightGrey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
