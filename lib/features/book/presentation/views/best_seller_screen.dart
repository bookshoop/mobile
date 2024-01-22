import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:flutter/material.dart';

class BestSellerScreen extends StatelessWidget {
  static String get routeName => '/best-seller';

  const BestSellerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '베스트셀러',
      ),
      body: CustomScrollView(
        physics: const NoImplicitScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              top: expectSize(24),
              left: expectSize(24),
              right: expectSize(24),
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              crossAxisSpacing: expectSize(15),
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
