import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:flutter/material.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';

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
          left: 24.size,
          right: 24.size,
        ),
        child: CustomScrollView(
          physics: const NoImplicitScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              floating: true,
              delegate: SliverHeaderDelegate(
                maxHeight: 74.size,
                minHeight: 74.size,
                child: Container(
                  height: 74.size,
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
              crossAxisSpacing: 15.size,
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
