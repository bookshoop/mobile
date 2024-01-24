import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_list_card.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_selector.dart';
import 'package:flutter/material.dart';

class BookTreeScreen extends StatelessWidget {
  final String? searchValue;
  const BookTreeScreen({
    super.key,
    this.searchValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.size,
        right: 24.size,
      ),
      child: CustomScrollView(
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
                    SearchTextfield(
                      hintText: '책나무를 검색해보세요!',
                      controller: TextEditingController(text: searchValue),
                    ),
                    const EmptySpace(height: 14),
                    DropdownSelector(
                      dropdownItems: const [
                        '전체',
                        '나의 책나무',
                        '팔로잉 책나무',
                      ],
                      hintText: '전체',
                      endButton: Row(
                        children: [
                          Text(
                            '책나무심기 ',
                            style: AppThemeData.medium_15,
                          ),
                          Icon(
                            Icons.create_outlined,
                            size: 24.size,
                            color: AppThemeData.mainColor,
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
          SliverList.separated(
            itemCount: 20,
            itemBuilder: (_, __) => BookTreeListCard(
              bookTree: BookTree(
                id: 1,
                title: '책제목1 재미있는 책이다~',
                content: '''
                책 읽고 쓴 내용임. 책 읽고 쓴 내용임. 
                책 읽고 쓴 내용임. 책 읽고 쓴 내용임. 
                책 읽고 쓴 내용임. 책 읽고 쓴 내용임. 
                책 읽고 쓴 내용임. 책 읽고 쓴 내용임. ''',
                likes: 2,
                isLike: true,
                book: const Book(
                  id: '1',
                  title: '책제목',
                  writer: '나는 작가',
                  category: '재밌는 장르',
                ),
                createDateTime: DateTime.now(),
                user: const User.simpleWriter(
                  id: 1,
                  username: '글쓴이임',
                ),
              ),
            ),
            separatorBuilder: (_, __) => const EmptySpace(height: 12),
          ),
          const SliverToBoxAdapter(child: EmptySpace(height: 64)),
        ],
      ),
    );
  }
}
