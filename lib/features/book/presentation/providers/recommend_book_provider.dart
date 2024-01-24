import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/domain/usecases/get_recomment_book.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommend_book_provider.g.dart';

@Riverpod(keepAlive: true)
class RecommendBook extends _$RecommendBook {
  @override
  Pagination<Book> build() {
    getBooks();
    return const Pagination.loading();
  }

  Future<void> getBooks() async {
    state = const Pagination.loading();
    final getRecommendBook = ref.read(getRecommendBookProvider);

    try {
      state = await getRecommendBook.call();
    } on Exception catch (e) {
      state = Pagination.error(message: e.toString());
    }
  }
}
