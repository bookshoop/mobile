import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/dialog/dialog_manager.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailScreen extends StatelessWidget {
  static String get routeName => '/book';

  const BookDetailScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    const book = Book(
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
                top: 30.size,
              ),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://image.aladin.co.kr/product/32896/32/cover500/k402936527_1.jpg',
                    width: 170.size,
                    height: 255.size,
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
                    itemSize: 24.size,
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
                horizontal: 36.size,
              ),
              child: Container(
                height: 80.size,
                decoration: BoxDecoration(
                  color: AppThemeData.backGroundColor,
                  borderRadius: BorderRadius.circular(16.size),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        DialogManager.customAlertDialog(
                          context,
                          title: '별점을 남겨주세요',
                          content: RatingBar(
                            glow: false,
                            allowHalfRating: true,
                            ratingWidget: RatingWidget(
                              full: const Icon(
                                Icons.star_outlined,
                                color: AppThemeData.mainColor,
                              ),
                              half: const Icon(
                                Icons.star_half,
                                color: AppThemeData.mainColor,
                              ),
                              empty: const Icon(
                                Icons.star_outline,
                                color: AppThemeData.mainColor,
                              ),
                            ),
                            onRatingUpdate: (value) {},
                            itemSize: 26.size,
                            itemCount: 5,
                            unratedColor: AppThemeData.lightGrey,
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_box_outlined,
                            color: AppThemeData.mainColor,
                            size: 24.size,
                          ),
                          const EmptySpace(height: 10),
                          Text(
                            '읽은 책',
                            style: AppThemeData.medium_13,
                          ),
                        ],
                      ),
                    ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Icon(
                    //       Icons.favorite_border,
                    //       color: AppThemeData.mainColor,
                    //       size: 24.size,
                    //     ),
                    //     Text(
                    //       '위시\n리스트',
                    //       style: AppThemeData.medium_10,
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ],
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chrome_reader_mode_outlined,
                          color: AppThemeData.mainColor,
                          size: 24.size,
                        ),
                        Text(
                          '읽은 사람\n7283명',
                          style: AppThemeData.medium_10,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     SvgPicture.asset('assets/images/icon/edit_square.svg'),
                    //     Text(
                    //       '책나무\n심기',
                    //       style: AppThemeData.medium_10,
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            const EmptySpace(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.size,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.size),
                    child: Column(
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
                              size: 20.size,
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
                              padding: EdgeInsets.only(right: 3.size),
                              child: Icon(
                                Icons.border_color_outlined,
                                color: AppThemeData.mainColor,
                                size: 14.size,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '책 소개',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '''불행을 파는 대신 원하는 행복을 살 수 있는 가게가 있다면? 듣기만 해도 방문하고 싶어지는, 비가 오면 열리는 수상한 상점에 초대된 여고생 세린이 안내묘 잇샤, 사람의 마음을 훔치는 도깨비들과 함께 펼치는 감동 모험 판타지.''',
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
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '목차',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '''
프롤로그
1장. 낙인 금지
2장. 공소권 없음
3장. 두 개의 얼굴
4장. 어쩌면 진실보다 중요한
5장. 완전히 무너졌을 때
6장. 마지막 마음이 말하고 있는 것

작가의 말''',
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
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '출판사',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '클레이하우스',
                          style: AppThemeData.regular_14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '카테고리',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '소설/시/희곡',
                          style: AppThemeData.regular_14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '페이지 수',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '368',
                          style: AppThemeData.regular_14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ISBN',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '9791193235119',
                          style: AppThemeData.regular_14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '가격',
                          style: AppThemeData.semiBold_16,
                        ),
                        Text(
                          '17800원',
                          style: AppThemeData.regular_14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.size,
                      bottom: 2.size,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                'http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=332058591&amp;partner=openAPI&amp;start=api',
                              ),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            '자세히보기',
                            style: AppThemeData.semiBold_16.copyWith(
                              color: AppThemeData.mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.size,
                      bottom: SizeUtil.bottomPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '도서 DB 제공 : 알라딘',
                          style: AppThemeData.regular_14.copyWith(
                            color: AppThemeData.lightGrey,
                          ),
                        ),
                      ],
                    ),
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
