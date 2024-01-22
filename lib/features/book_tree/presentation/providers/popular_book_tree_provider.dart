import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:bookforest/features/book_tree/domain/usecases/get_popular_book_tree.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_book_tree_provider.g.dart';

@Riverpod(keepAlive: true)
class PopularBookTree extends _$PopularBookTree {
  @override
  Pagination<BookTree> build() {
    getBookTrees();
    return const PaginationLoading();
  }

  Future<void> getBookTrees() async {
    state = const PaginationLoading();
    final getPopularBookTree = ref.read(getPopularBookTreeProvider);
    try {
      state = await getPopularBookTree.call();
    } on Exception catch (e) {
      state = Pagination.error(message: e.toString());
    }
  }
}
