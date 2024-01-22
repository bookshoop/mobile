import 'package:bookforest/common/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/common/utils/no_implicit_scroll_physics.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/search_textfield.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_list_card_in_book_shelf.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_floating_button.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_selector.dart';

class BookShelfScreen extends StatelessWidget {
  const BookShelfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: expectSize(24),
        right: expectSize(24),
      ),
      child: Stack(
        children: [
          CustomScrollView(
            physics: const NoImplicitScrollPhysics(),
            slivers: [
              SliverPersistentHeader(
                floating: true,
                delegate: SliverHeaderDelegate(
                  maxHeight: expectSize(115),
                  minHeight: expectSize(115),
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
                                size: expectSize(24),
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
                // mainAxisSpacing: expectSize(16),
                crossAxisSpacing: expectSize(15),
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
            bottom: expectSize(25),
            right: 0,
            child: const BookShelfFloatingButton(),
          ),
        ],
      ),
    );
  }
}
