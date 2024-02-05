import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/pagination/pagination_grid_view.dart';
import 'package:bookforest/core/utils/no_implicit_scroll_physics.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:bookforest/features/library/presentation/providers/library_controller.dart';
import 'package:bookforest/features/library/presentation/widgets/book_list_card_in_library.dart';
import 'package:bookforest/features/library/presentation/widgets/library_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryBookList extends ConsumerStatefulWidget {
  const LibraryBookList({
    super.key,
  });

  @override
  ConsumerState<LibraryBookList> createState() => _LibraryBookListState();
}

class _LibraryBookListState extends ConsumerState<LibraryBookList> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(Durations.extralong4);
      },
      child: CustomScrollView(
        controller: controller,
        physics: const NoImplicitScrollPhysics(),
        slivers: [
          const LibraryHeader(),
          Consumer(
            builder: (context, ref, _) {
              final state = ref.watch(
                libraryControllerProvider.select((value) => value.libraryBooks),
              );
              return PaginationSliverGridView<LibraryBook>(
                controller: controller,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.size,
                  childAspectRatio: 0.35,
                ),
                itemBuilder: (context, index) {
                  final content =
                      (state as PaginationData<LibraryBook>).content;
                  final libraryBook = content[index];
                  return BookListCardInLibrary(
                    libraryBook: libraryBook,
                  );
                },
                pagination: state,
                onFetchMore: () {
                  print('object');
                },
              );
            },
          ),
          const SliverToBoxAdapter(
            child: EmptySpace(height: 64),
          ),
        ],
      ),
    );
  }
}
