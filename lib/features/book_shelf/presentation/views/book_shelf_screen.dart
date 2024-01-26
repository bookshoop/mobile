import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/layout/main_appbar.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_list_card_in_book_shelf.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_floating_button.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_selector.dart';

class BookShelfScreen extends StatelessWidget {
  static String get routeName => '/book-shelf';
  const BookShelfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: MainAppbar(
        onProfileTap: () {},
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.size,
          right: 24.size,
        ),
        child: Stack(
          children: [
            CustomScrollView(
              physics: const NoImplicitScrollPhysics(),
              slivers: [
                SliverPersistentHeader(
                  floating: true,
                  delegate: SliverHeaderDelegate(
                    maxHeight: 115.size,
                    minHeight: 115.size,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const EmptySpace(height: 16),
                          const SearchTextfield(
                            hintText: '내 서재의 책을 검색해보세요!',
                          ),
                          const EmptySpace(height: 14),
                          Row(
                            children: [
                              // const Icon(
                              //   Icons.tune_outlined,
                              //   color: AppThemeData.mainColor,
                              // ),
                              // EmptySpace(width: 3.size),
                              Expanded(
                                child: SizedBox(
                                  height: 20.size,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        color: Colors.accents[15 % (index + 1)],
                                        width: 50.size,
                                        height: 10.size,
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: 10.size,
                                      );
                                    },
                                    itemCount: 5,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    isScrollControlled: true,
                                    scrollControlDisabledMaxHeightRatio: 0.5,
                                    useSafeArea: true,
                                    builder: (_) => Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 30.size,
                                        horizontal: 20.size,
                                      ),
                                      child: Wrap(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                onTap: () {},
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '서재관리',
                                                      style: AppThemeData
                                                          .medium_18,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right,
                                                      size: 26.size,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              EmptySpace(
                                                height: 15.size,
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                onTap: () {},
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '도서관리',
                                                      style: AppThemeData
                                                          .medium_18,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right,
                                                      size: 26.size,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              EmptySpace(
                                                height: 15.size,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.size),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '서재관리',
                                        style: AppThemeData.medium_15,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 24.size,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // DropdownSelector(
                          //   dropdownItems: const [
                          //     '전체',
                          //     '냥냥이 서재',
                          //     '집사 서재',
                          //     '집사서재는 고양이꺼',
                          //     '집사 고양이 귀엽찌!',
                          //   ],
                          //   hintText: '위치선택',
                          //   endButton: Row(
                          //     children: [
                          //       Text(
                          //         '서재관리\u{1F4DA}',
                          //         style: AppThemeData.medium_15,
                          //       ),
                          //       Icon(
                          //         Icons.keyboard_arrow_right,
                          //         size: 24.size,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          const EmptySpace(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverGrid.count(
                  crossAxisCount: 3,
                  // mainAxisSpacing: 16.size,
                  crossAxisSpacing: 15.size,
                  childAspectRatio: 0.35,
                  children: const [
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                    BookListCardInBookShelf(),
                  ],
                ),
                const SliverToBoxAdapter(child: EmptySpace(height: 64)),
              ],
            ),
            Positioned(
              bottom: 25.size,
              right: 0,
              child: const BookShelfFloatingButton(),
            ),
          ],
        ),
      ),
    );
  }
}
