import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/common/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/presentation/widgets/best_seller_list.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/popular_book_forest.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/popular_book_tree.dart';
import 'package:bookforest/features/book/presentation/widgets/recomment_book_list.dart';
import 'package:bookforest/features/search/presentation/views/search_screen.dart';
import 'package:bookforest/common/presentation/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookForestScreen extends StatelessWidget {
  const BookForestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                padding: EdgeInsets.symmetric(
                  vertical: expectSize(16),
                ),
                color: Colors.white,
                child: SearchTextfield(
                  hintText: '책숲에서 검색을 해보세요!',
                  onSubmitted: (value) {
                    context.pushNamed(
                      SearchScreen.routeName,
                      extra: value,
                    );
                  },
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BestSellerList(),
          ),
          const SliverToBoxAdapter(
            child: RecommendBookList(),
          ),
          const SliverToBoxAdapter(
            child: PopularBookForest(),
          ),
          const SliverToBoxAdapter(
            child: PopularBookTree(),
          ),
          const SliverToBoxAdapter(
            child: EmptySpace(height: 64),
          ),
        ],
      ),
    );
  }
}
