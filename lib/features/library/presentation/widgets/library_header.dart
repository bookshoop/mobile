import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/library/presentation/providers/library_controller.dart';
import 'package:bookforest/features/library/presentation/widgets/filter_bottom_sheet.dart';
import 'package:bookforest/features/library/presentation/widgets/manage_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryHeader extends ConsumerWidget {
  const LibraryHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(libraryControllerProvider);
    return SliverPersistentHeader(
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
              const SearchTextfield(
                hintText: '내 서재의 책을 검색해보세요!',
              ),
              const EmptySpace(height: 14),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20.size,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                customBottomSheet(
                                  context,
                                  child: const FilterBottomSheet(),
                                );
                              },
                              splashColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Text(
                                    state.selectedLibrary,
                                    style: AppThemeData.regular_15,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 22.size,
                                  ),
                                ],
                              ),
                            ),
                            EmptySpace(
                              width: 10.size,
                            ),
                            InkWell(
                              onTap: () {
                                customBottomSheet(
                                  context,
                                  child: const FilterBottomSheet(),
                                );
                              },
                              splashColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Text(
                                    state.selectedCategory,
                                    style: AppThemeData.regular_15,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 22.size,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      customBottomSheet(
                        context,
                        child: const ManageBottomSheet(),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.size),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '서재관리',
                            style: AppThemeData.medium_15,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 24.size,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const EmptySpace(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
