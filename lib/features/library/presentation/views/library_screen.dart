import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/layout/main_appbar.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/features/library/presentation/widgets/library_header.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/features/library/presentation/widgets/book_list_card_in_library.dart';
import 'package:bookforest/features/library/presentation/widgets/library_floating_button.dart';

class LibraryScreen extends StatelessWidget {
  static String get routeName => '/library';
  const LibraryScreen({super.key});

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
                const LibraryHeader(),
                // SliverFillRemaining(
                //   child: DragSelectGridView(
                //     gridController: DragSelectGridViewController(),
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //       crossAxisSpacing: 15.size,
                //       childAspectRatio: 0.35,
                //     ),
                //     itemBuilder: (context, index, selected) {
                //       return BookListCardInLibrary();
                //     },
                //   ),
                // ),
                SliverGrid.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.size,
                  childAspectRatio: 0.35,
                  children: const [
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                    BookListCardInLibrary(),
                  ],
                ),
                const SliverToBoxAdapter(
                  child: EmptySpace(height: 64),
                ),
              ],
            ),
            Positioned(
              bottom: 25.size,
              right: 0,
              child: const LibraryFloatingButton(),
            ),
          ],
        ),
      ),
    );
  }
}
