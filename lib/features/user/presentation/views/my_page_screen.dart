import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/recommend_book_forest_list_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: expectSize(24),
              right: expectSize(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const EmptySpace(height: 40),
                Row(
                  children: [
                    CircleAvatar(
                      radius: expectSize(40),
                      backgroundImage: const NetworkImage(
                        'https://i.namu.wiki/i/sJP57jG46ZMxtguzyqmOl-xyOqW6yteOiTfiKzlLkJFrO0HmDQh_DVdnTJp_zo7MWkjVbpFHDwnJJIcWrq-ViQ.webp',
                      ),
                    ),
                    const EmptySpace(width: 12),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const EmptySpace(height: 9),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'CatIsCuteCatIs',
                                  style: AppThemeData.bold_20,
                                ),
                              ),
                              Icon(
                                Icons.settings,
                                size: expectSize(24),
                              ),
                            ],
                          ),
                          const EmptySpace(height: 10),
                          Text(
                            '팔로워 123명 팔로잉 243명',
                            style: AppThemeData.medium_15.copyWith(
                              color: AppThemeData.darkGrey,
                            ),
                          ),
                          const EmptySpace(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
                const EmptySpace(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(vertical: expectSize(15)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(expectSize(16)),
                    color: AppThemeData.backGroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            size: expectSize(24),
                            color: AppThemeData.mainColor,
                          ),
                          Text(
                            '위시리스트\n10권',
                            style: AppThemeData.medium_12,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.chrome_reader_mode_outlined,
                            size: expectSize(24),
                            color: AppThemeData.mainColor,
                          ),
                          Text(
                            '읽은책\n10권',
                            style: AppThemeData.medium_12,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/icon/edit_square.svg',
                            width: expectSize(24),
                            height: expectSize(24),
                          ),
                          Text(
                            '책나무\n130그루',
                            style: AppThemeData.medium_12,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const EmptySpace(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CatIsCute님의 책숲',
                      style: AppThemeData.bold_18,
                    ),
                    Text(
                      '더보기',
                      style: AppThemeData.medium_16,
                    ),
                  ],
                ),
                const EmptySpace(height: 20),
                const RecommendBookForestListCard(),
                const EmptySpace(height: 24),
                Text(
                  '월별 그래프',
                  style: AppThemeData.bold_16,
                ),
                const EmptySpace(height: 16),
                SizedBox(
                  height: expectSize(222),
                  child: LineChart(
                    LineChartData(
                      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
                      lineTouchData: const LineTouchData(
                        handleBuiltInTouches: true,
                      ),
                      gridData: const FlGridData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 20,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                '${value.toInt().toString()}월',
                                style: AppThemeData.bold_11.copyWith(
                                  color: AppThemeData.mainColor,
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 2,
                            reservedSize: 15,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                value.toInt().toString(),
                                style: AppThemeData.bold_11.copyWith(
                                  color: AppThemeData.mainColor,
                                ),
                              );
                            },
                          ),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: true,
                          color: AppThemeData.mainColor,
                          barWidth: 4,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                          spots: const [
                            FlSpot(1, 1),
                            FlSpot(2, 5),
                            FlSpot(3, 1),
                            FlSpot(5, 1),
                            FlSpot(7, 3),
                            FlSpot(10, 2),
                            FlSpot(12, 2),
                          ],
                        ),
                        LineChartBarData(
                          isCurved: true,
                          color: const Color.fromRGBO(196, 215, 131, 0.8),
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: false),
                          spots: const [
                            FlSpot(1, 1),
                            FlSpot(3, 2),
                            FlSpot(6, 3),
                            FlSpot(7, 1),
                            FlSpot(10, 2),
                            FlSpot(12, 2),
                          ],
                        ),
                        LineChartBarData(
                          isCurved: true,
                          color: const Color.fromRGBO(246, 169, 169, 0.5),
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                          spots: const [
                            FlSpot(1, 2),
                            FlSpot(3, 1),
                            FlSpot(4, 3),
                            FlSpot(6, 3),
                            FlSpot(7, 2),
                            FlSpot(10, 1),
                            FlSpot(12, 0),
                          ],
                        ),
                      ],
                      minX: 1,
                      maxX: 12,
                      maxY: 10,
                      minY: 0,
                    ),
                  ),
                ),
                const EmptySpace(height: 36),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '공지사항',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '문의하기',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '이용약관',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '개인정보 처리방침',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '오픈소스 라이선스',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '버전 1.0.0',
                  style: AppThemeData.bold_16,
                ),
                Text(
                  '최신버전입니다',
                  style: AppThemeData.medium_16.copyWith(
                    color: AppThemeData.darkGrey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '로그아웃',
              style: AppThemeData.bold_16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: expectSize(14),
              horizontal: expectSize(24),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppThemeData.lightGrey),
              ),
            ),
            child: Text(
              '탈퇴하기',
              style: AppThemeData.bold_16,
            ),
          ),
          const EmptySpace(height: 64),
        ],
      ),
    );
  }
}
