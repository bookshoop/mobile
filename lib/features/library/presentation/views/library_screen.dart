import 'package:bookforest/core/presentation/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/layout/main_appbar.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/features/library/presentation/widgets/filter_bottom_sheet.dart';
import 'package:bookforest/features/library/presentation/widgets/manage_bottom_sheet.dart';
import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';
import 'package:bookforest/core/utils/size_util.dart';
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
                SliverPersistentHeader(
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
                              // const Icon(
                              //   Icons.tune_outlined,
                              //   color: AppThemeData.mainColor,
                              // ),
                              // EmptySpace(width: 3.size),
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
                                                '위치선택',
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
                                                '장르선택',
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
                                  onManageTap(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.size),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          // DropdownSelector(
                          //   dropdownItems: const [
                          //     '전체',
                          //     '냥냥이 서재',
                          //     '집사 서재',
                          //     '집사서재는 고양이꺼',
                          //     '집사 고양이 귀엽찌!',
                          //   ],
                          //   hintText: '위치선택',
                          //   endButton: Row(
                          //     children: [
                          //       Text(
                          //         '서재관리\u{1F4DA}',
                          //         style: AppThemeData.medium_15,
                          //       ),
                          //       Icon(
                          //         Icons.keyboard_arrow_right,
                          //         size: 24.size,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          const EmptySpace(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
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
                  // mainAxisSpacing: 16.size,
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
              child: const BookShelfFloatingButton(),
            ),
          ],
        ),
      ),
    );
  }

  void onManageTap(BuildContext context) {
    customBottomSheet(
      context,
      child: const ManageBottomSheet(),
    );
  }
}
