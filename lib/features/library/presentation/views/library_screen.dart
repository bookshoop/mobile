import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/layout/main_appbar.dart';
import 'package:bookforest/features/library/presentation/widgets/library_book_list.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/core/utils/size_util.dart';
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
            const LibraryBookList(),
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
