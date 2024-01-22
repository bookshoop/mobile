import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/presentation/views/book_search_screen.dart';
import 'package:bookforest/features/book/presentation/widgets/book_preview.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_search_screen.dart';
import 'package:bookforest/features/book_forest/presentation/views/home_screen.dart';
import 'package:bookforest/features/search/presentation/widgets/user_preview.dart';
import 'package:bookforest/features/user/presentation/views/user_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_preview.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_preview.dart';
import 'package:bookforest/common/presentation/widgets/search_textfield.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  static String get routeName => '/search';
  final String value;

  const SearchScreen({
    super.key,
    required this.value,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '통합검색',
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: expectSize(24),
          right: expectSize(24),
        ),
        child: CustomScrollView(
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
                        controller: controller,
                        hintText: '책숲에서 검색을 해보세요!',
                        onSubmitted: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BookPreview(
                title: '검색한 책 목록이에요!',
                onMoreTap: () {
                  context.pushNamed(
                    BookSearchScreen.routeName,
                    extra: controller.text,
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: BookForestPreview(
                title: '검색한 책숲이에요!',
                onMoreTap: () => context.pushNamed(
                  BookForestListScreen.routeName,
                  extra: controller.text.trim(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BookTreePreview(
                title: '검색한 책나무에요!',
                onMoreTap: () {
                  context.goNamed(
                    HomeScreen.routeName,
                    queryParameters: {
                      'initialIndex': '3',
                      'searchValue': controller.text.trim()
                    },
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: UserPreview(
                title: '검색한 유저에요!',
                onMoreTap: () {
                  context.pushNamed(
                    UserSearchScreen.routeName,
                    extra: controller.text,
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: EmptySpace(height: 64),
            ),
          ],
        ),
      ),
    );
  }
}
