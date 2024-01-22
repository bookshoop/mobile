import 'package:bookforest/common/presentation/widgets/custom_button.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:flutter/material.dart';

class JoinScreen extends StatelessWidget {
  static String get routeName => '/join';

  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      resizeToAvoidBottomInset: true,
      body: Hero(
        tag: 'background',
        child: Material(
          child: Container(
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
                const Spacer(flex: 70),
                Flexible(
                  flex: 57,
                  child: Image.asset(
                    'assets/images/common/logo_horizontal.png',
                  ),
                ),
                const Spacer(flex: 18),
                Text(
                  '회원가입을 위한 시간을 할애해 주셔서 감사합니다.\n좋은 서비스로 보답하겠습니다.',
                  style: AppThemeData.bold_14.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '체크 표시된 사항은 필수 입력사항입니다.',
                  style: AppThemeData.bold_14.copyWith(
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 21),
                Flexible(
                  flex: 605,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: expectSize(24),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppThemeData.backGroundColor,
                        borderRadius: BorderRadius.circular(expectSize(15)),
                      ),
                      padding: EdgeInsets.only(
                        left: expectSize(19),
                        right: expectSize(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Spacer(flex: 24),
                          Flexible(
                            flex: 96,
                            child: Image.asset(
                              'assets/images/login/Account circle.png',
                            ),
                          ),
                          const Spacer(flex: 10),
                          Flexible(
                            flex: 54,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  size: expectSize(20),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: expectSize(6),
                                      right: expectSize(72),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: ' 닉네임 입력',
                                        hintStyle:
                                            AppThemeData.regular_12.copyWith(
                                          color: Colors.black,
                                        ),
                                        helperText: ' 닉네임은 2~10자로 입력해 주세요',
                                        helperStyle:
                                            AppThemeData.regular_10.copyWith(
                                          color: const Color.fromRGBO(
                                              0, 102, 204, 1),
                                        ),
                                        helperMaxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 10),
                          Flexible(
                            flex: 54,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  size: expectSize(20),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: expectSize(6),
                                      right: expectSize(16),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: ' 전화번호 입력',
                                        hintStyle:
                                            AppThemeData.regular_12.copyWith(
                                          color: Colors.black,
                                        ),
                                        helperText: ' 전화번호는 \'-\'없이 입력해 주세요',
                                        helperStyle:
                                            AppThemeData.regular_10.copyWith(
                                          color: const Color.fromRGBO(
                                              0, 102, 204, 1),
                                        ),
                                        helperMaxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  text: '인증',
                                  textStyle: AppThemeData.regular_14.copyWith(
                                    color: Colors.white,
                                  ),
                                  width: 56,
                                  height: 26,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 10),
                          Flexible(
                            flex: 54,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  size: expectSize(20),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: expectSize(6),
                                      right: expectSize(72),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: ' 인증번호 입력',
                                        hintStyle:
                                            AppThemeData.regular_12.copyWith(
                                          color: Colors.black,
                                        ),
                                        helperText: '',
                                        helperStyle:
                                            AppThemeData.regular_10.copyWith(
                                          color: const Color.fromRGBO(
                                              0, 102, 204, 1),
                                        ),
                                        helperMaxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 10),
                          Flexible(
                            flex: 54,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  size: expectSize(20),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: expectSize(6),
                                      right: expectSize(72),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: ' 비밀번호 입력',
                                        hintStyle:
                                            AppThemeData.regular_12.copyWith(
                                          color: Colors.black,
                                        ),
                                        helperText:
                                            ' 대소문자, 숫자를 포함하여 8~12자리로 입력',
                                        helperStyle:
                                            AppThemeData.regular_10.copyWith(
                                          color: const Color.fromRGBO(
                                              0, 102, 204, 1),
                                        ),
                                        helperMaxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 10),
                          Flexible(
                            flex: 54,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  size: expectSize(20),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: expectSize(6),
                                      right: expectSize(72),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: ' 비밀번호 확인 입력',
                                        hintStyle:
                                            AppThemeData.regular_12.copyWith(
                                          color: Colors.black,
                                        ),
                                        helperText: ' 닉네임은 2~10자로 입력해 주세요',
                                        helperStyle:
                                            AppThemeData.regular_10.copyWith(
                                          color: const Color.fromRGBO(
                                              0, 102, 204, 1),
                                        ),
                                        helperMaxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 80),
                          Flexible(
                            flex: 35,
                            fit: FlexFit.tight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CustomButton(
                                  text: '취소',
                                  width: 75,
                                  color: AppThemeData.darkGrey,
                                ),
                                SizedBox(
                                  width: expectSize(16),
                                ),
                                const CustomButton(
                                  text: '가입',
                                  width: 75,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(flex: 50),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
