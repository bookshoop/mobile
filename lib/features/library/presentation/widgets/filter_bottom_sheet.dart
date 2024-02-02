import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/custom_button.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:bookforest/features/library/presentation/providers/library_controller.dart';
import 'package:bookforest/features/library/presentation/widgets/category_selector.dart';
import 'package:bookforest/features/library/presentation/widgets/library_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FilterBottomSheet extends ConsumerStatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  ConsumerState<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {
  List<BookCategory> selectedCategory = [];
  List<Library> selectedLibrary = [];

  @override
  void initState() {
    final state = ref.read(libraryControllerProvider);
    selectedCategory = [...state.category];
    selectedLibrary = [...state.library];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(libraryControllerProvider);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.size,
        horizontal: 20.size,
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LibrarySelector(
                allLibrary: state.allLibrary,
                selectedLibrary: selectedLibrary,
                onTap: (library) {
                  if (selectedLibrary.contains(library)) {
                    selectedLibrary.remove(library);
                  } else {
                    selectedLibrary = [...selectedLibrary, library];
                  }
                  setState(() {});
                },
              ),
              EmptySpace(height: 10.size),
              CategorySelector(
                allCategory: state.allCategory,
                selectedCategory: selectedCategory,
                onTap: (category) {
                  if (selectedCategory.contains(category)) {
                    selectedCategory.remove(category);
                  } else {
                    selectedCategory = [...selectedCategory, category];
                  }
                  setState(() {});
                },
              ),
              EmptySpace(height: 15.size),
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: CustomButton(
                      text: '취소',
                      height: 40.size,
                      color: AppThemeData.darkGrey,
                      onTap: context.pop,
                    ),
                  ),
                  SizedBox(
                    width: 10.size,
                  ),
                  Flexible(
                    flex: 7,
                    child: CustomButton(
                      text: '적용하기',
                      height: 40.size,
                      onTap: () {
                        ref
                            .read(libraryControllerProvider.notifier)
                            .setFilter(selectedCategory, selectedLibrary);
                        context.pop();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
