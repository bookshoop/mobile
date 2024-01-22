import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/common/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:flutter/material.dart';
import 'package:bookforest/common/presentation/widgets/search_textfield.dart';

class BookSearchScreen extends StatelessWidget {
  static String get routeName => '/search/book';
  final String value;

  const BookSearchScreen({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '책 검색',
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: expectSize(24),
          right: expectSize(24),
        ),
        child: CustomScrollView(
          physics: const NoImplicitScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              floating: true,
              delegate: SliverHeaderDelegate(
                maxHeight: expectSize(74),
                minHeight: expectSize(74),
                child: Container(
                  height: expectSize(74),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const EmptySpace(height: 16),
                      SearchTextfield(
                        controller: TextEditingController(text: value),
                        hintText: '책이름, 저자로 검색 해보세요!',
                        onSubmitted: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              crossAxisSpacing: expectSize(15),
              childAspectRatio: 0.4,
              children: List.generate(
                16,
                (index) => const BookListCard(
                  book: Book(
                      id: '0',
                      title: 'title',
                      writer: 'writer',
                      category: 'category'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
