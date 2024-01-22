import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';

class PushScreen extends StatelessWidget {
  static String get routeName => '/push';
  const PushScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '알림',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            10,
            (index) => Dismissible(
              direction: DismissDirection.horizontal,
              key: Key(index.toString()),
              child: Container(
                padding: EdgeInsets.only(
                  top: expectSize(10),
                  left: expectSize(15),
                  right: expectSize(15),
                  bottom: expectSize(6),
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppThemeData.lightGrey),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon/bookforest.png',
                      width: expectSize(20),
                      height: expectSize(20),
                      color: AppThemeData.mainColor,
                    ),
                    const EmptySpace(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '[챌린지] 독서 습관만들기 챌린지 오픈! 책숲이와 함께 독서 습관을 길러보아요 :)',
                            style: AppThemeData.medium_15,
                          ),
                          Text(
                            '1시간 전',
                            style: AppThemeData.regular_12.copyWith(
                              color: AppThemeData.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
