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
                          DropdownSelector(
                            dropdownItems: const [
                              '전체',
                              '냥냥이 서재',
                              '집사 서재',
                              '집사서재는 고양이꺼',
                              '집사 고양이 귀엽찌!',
                            ],
                            hintText: '위치선택',
                            endButton: Row(
                              children: [
                                Text(
                                  '서재관리\u{1F4DA}',
                                  style: AppThemeData.medium_15,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 24.size,
                                ),
                              ],
                            ),
                          ),
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
