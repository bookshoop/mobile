import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:bookforest/features/book_forest/domain/usecases/get_popular_book_forest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_book_forest_provider.g.dart';

@Riverpod(keepAlive: true)
class PopularBookForest extends _$PopularBookForest {
  @override
  Pagination<BookForest> build() {
    getBookForest();
    return const Pagination.loading();
  }

  Future<void> getBookForest() async {
    state = const Pagination.loading();
    final getPopularBookForest = ref.read(getPopularBookForestProvider);

    try {
      state = await getPopularBookForest.call();
    } on Exception catch (e) {
      state = Pagination.error(message: e.toString());
    }
  }
}
