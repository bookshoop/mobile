import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetailScreen extends StatelessWidget {
  static String get routeName => '/book';

  const BookDetailScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final book = const Book(
      id: '1',
      title: '재밌는책',
      writer: '나는작가',
      category: '장르',
    );
    return CustomScaffold(
      appbar: CustomAppbar(
        title: book.title,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: expectSize(30),
              ),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://image.aladin.co.kr/product/32896/32/cover500/k402936527_1.jpg',
                    width: expectSize(170),
                    height: expectSize(255),
                  ),
                  const EmptySpace(height: 10),
                  Text(
                    book.title,
                    style: AppThemeData.bold_18,
                  ),
                  const EmptySpace(height: 5),
                  Text(
                    book.writer,
                    style: AppThemeData.regular_14.copyWith(
                      color: AppThemeData.darkGrey,
                    ),
                  ),
                  const EmptySpace(height: 5),
                  RatingBarIndicator(
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: AppThemeData.mainColor,
                    ),
                    itemSize: expectSize(24),
                    itemCount: 5,
                    rating: 3.5,
                    unratedColor: AppThemeData.lightGrey,
                  ),
                ],
              ),
            ),
            const EmptySpace(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: expectSize(36),
              ),
              child: Container(
                height: expectSize(80),
                decoration: BoxDecoration(
                  color: AppThemeData.backGroundColor,
                  borderRadius: BorderRadius.circular(expectSize(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box_outlined,
                          color: AppThemeData.mainColor,
                          size: expectSize(24),
                        ),
                        EmptySpace(height: 10),
                        Text(
                          '읽은 책',
                          style: AppThemeData.medium_13,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: AppThemeData.mainColor,
                          size: expectSize(24),
                        ),
                        Text(
                          '위시\n리스트',
                          style: AppThemeData.medium_10,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chrome_reader_mode_outlined,
                          color: AppThemeData.mainColor,
                          size: expectSize(24),
                        ),
                        Text(
                          '읽은 사람\n7283명',
                          style: AppThemeData.medium_10,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/icon/edit_square.svg'),
                        Text(
                          '책나무\n심기',
                          style: AppThemeData.medium_10,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const EmptySpace(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: expectSize(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '내 서재 담기',
                            style: AppThemeData.semiBold_16,
                          ),
                          Icon(
                            Icons.add,
                            color: AppThemeData.mainColor,
                            size: expectSize(20),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '나의서재, 작은책장, 에세이책칸',
                            style: AppThemeData.regular_14,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: expectSize(3)),
                            child: Icon(
                              Icons.border_color_outlined,
                              color: AppThemeData.mainColor,
                              size: expectSize(14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const EmptySpace(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '책 소개',
                        style: AppThemeData.semiBold_16,
                      ),
                      Text(
                        '''
불행을 파는 대신 원하는 행복을 살 수 있는 가게가 있다면? 듣기만 해도 방문하고 싶어지는, 비가 오면 열리는 수상한 상점에 초대된 여고생 세린이 안내묘 잇샤, 사람의 마음을 훔치는 도깨비들과 함께 펼치는 감동 모험 판타지.''',
                        style: AppThemeData.regular_14,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            '더보기',
                            style: AppThemeData.bold_14.copyWith(
                              color: AppThemeData.mainColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
