import 'package:bookforest/common/presentation/widgets/layout/bottom_navigation_bar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/presentation/widgets/layout/main_appbar.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_screen.dart';
import 'package:bookforest/features/book_shelf/presentation/views/book_shelf_screen.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_travel_screen.dart';
import 'package:bookforest/features/book_tree/presentation/views/book_tree_screen.dart';
import 'package:bookforest/features/user/presentation/views/my_page_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String get routeName => '/';
  final int? initialIndex;
  final String? searchValue;

  const HomeScreen({
    super.key,
    this.initialIndex,
    this.searchValue = '',
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  int currentIndex = 2;
  int? initialIndex = 2;

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    if (initialIndex != null && widget.initialIndex != null) {
      controller.animateTo(widget.initialIndex!);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: widget.initialIndex ?? currentIndex,
    );
    controller.addListener(() {
      currentIndex = controller.index;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: MainAppbar(
        onProfileTap: () => controller.animateTo(4),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          initialIndex = null;
          controller.animateTo(index);
        },
      ),
      // floatingActionButton: currentIndex == 0
      //     ? FloatingActionButton(
      //         onPressed: () {},
      //       )
      //     : null,
      body: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const BookShelfScreen(),
          const BookTravelScreen(),
          const BookForestScreen(),
          BookTreeScreen(searchValue: widget.searchValue),
          const MyPageScreen(),
        ],
      ),
    );
  }
}
