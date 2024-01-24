import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:flutter/material.dart';

class BookRecommedScreen extends StatelessWidget {
  static String get routeName => '/book-recommend';

  const BookRecommedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '취향저격!',
      ),
      body: CustomScrollView(
        physics: const NoImplicitScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              top: 24.size,
              left: 24.size,
              right: 24.size,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15.size,
              childAspectRatio: 0.4,
              children: List.generate(
                16,
                (index) => BookListCard(
                  book: Book(
                    id: index.toString(),
                    title: 'title',
                    writer: 'writer',
                    category: 'category',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
