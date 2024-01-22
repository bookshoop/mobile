import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/domain/usecases/get_best_seller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'best_seller_provider.g.dart';

@Riverpod(keepAlive: true)
class BestSeller extends _$BestSeller {
  @override
  Pagination<Book> build() {
    getBooks();
    return const Pagination.loading();
  }

  Future<void> getBooks() async {
    state = const Pagination.loading();
    final getBestSeller = ref.read(getBestSellerProvider);

    try {
      state = await getBestSeller.call();
    } on Exception catch (e) {
      state = Pagination.error(message: e.toString());
    }
  }
}
