import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/features/auth/presentation/views/join_screen.dart';
import 'package:bookforest/features/auth/presentation/providers/auth_controller.dart';
import 'package:bookforest/features/auth/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginBox extends StatefulWidget {
  const LoginBox({
    super.key,
  });

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  late final TextEditingController phoneTextController;
  late final TextEditingController passwordTextController;
  late final FocusNode passwordFocus;
  late final FocusNode phoneFocus;
  String phoneHintText = '휴대폰번호 입력';
  String passwordHintText = '비밀번호 입력';

  @override
  void initState() {
    super.initState();
    phoneTextController = TextEditingController();
    passwordTextController = TextEditingController();
    phoneFocus = FocusNode();
    passwordFocus = FocusNode();
    phoneFocus.addListener(() {
      if (phoneFocus.hasFocus) {
        phoneHintText = '휴대폰번호는 숫자만 입력해주세요';
      } else {
        phoneHintText = '휴대폰번호 입력';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: expectSize(40),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: expectSize(30),
        ),
        decoration: BoxDecoration(
          color: AppThemeData.backGroundColor,
          borderRadius: BorderRadius.circular(expectSize(15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const EmptySpace(height: 20),
            SizedBox(
              height: expectSize(35),
              child: TextField(
                controller: phoneTextController,
                focusNode: phoneFocus,
                decoration: InputDecoration(
                  hintText: phoneHintText,
                  hintStyle: AppThemeData.regular_15,
                  counterText: '',
                ),
                maxLength: 11,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onSubmitted: (value) {
                  passwordFocus.requestFocus();
                },
                onChanged: (value) {
                  if (value.length == 11) {
                    passwordFocus.requestFocus();
                  }
                },
              ),
            ),
            const EmptySpace(height: 8),
            SizedBox(
              height: expectSize(35),
              child: Consumer(
                builder: (_, ref, __) {
                  return TextField(
                    controller: passwordTextController,
                    focusNode: passwordFocus,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '비밀번호 입력',
                      hintStyle: AppThemeData.regular_15,
                      counterText: '',
                    ),
                    maxLength: 12,
                    onSubmitted: (value) {
                      ref.read(authControllerProvider.notifier).login(
                            phoneNumber: phoneTextController.text.trim(),
                            password: passwordTextController.text.trim(),
                          );
                    },
                  );
                },
              ),
            ),
            const EmptySpace(height: 20),
            Consumer(
              builder: (context, ref, _) {
                return InkWell(
                  onTap: () {
                    ref.read(authControllerProvider.notifier).login(
                          phoneNumber: phoneTextController.text.trim(),
                          password: passwordTextController.text.trim(),
                        );
                  },
                  child: Container(
                    height: expectSize(35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(expectSize(8)),
                      color: AppThemeData.subGreen,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: expectSize(13),
                      ),
                    ),
                  ),
                );
              },
            ),
            const EmptySpace(height: 10),
            InkWell(
              onTap: () => context.pushNamed(JoinScreen.routeName),
              child: Container(
                height: expectSize(35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(expectSize(8)),
                  color: AppThemeData.subGreen,
                ),
                alignment: Alignment.center,
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: expectSize(13),
                  ),
                ),
              ),
            ),
            const EmptySpace(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: AppThemeData.lightGrey,
                    height: expectSize(1),
                  ),
                ),
                const EmptySpace(width: 5),
                Text(
                  '간편로그인',
                  style: AppThemeData.regular_14.copyWith(
                    color: AppThemeData.darkGrey,
                  ),
                ),
                const EmptySpace(width: 5),
                Expanded(
                  child: Container(
                    color: AppThemeData.lightGrey,
                    height: expectSize(1),
                  ),
                ),
              ],
            ),
            const EmptySpace(height: 10),
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
                style: AppThemeData.regular_13,
                textAlign: TextAlign.center,
              ),
            ),
            const EmptySpace(height: 20),
          ],
        ),
      ),
    );
  }
}
