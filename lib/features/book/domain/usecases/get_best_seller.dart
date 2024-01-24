import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/data/dtos/book_parameters.dart';
import 'package:bookforest/features/book/data/repositories/book_repository.dart';
import 'package:bookforest/features/book/data/repositories/mock/mock_book_repository.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_best_seller.g.dart';

@riverpod
GetBestSeller getBestSeller(GetBestSellerRef ref) {
  // TODO 실제 API 연결
  return GetBestSeller(bookRepository: MockBookRepository());
}

class GetBestSeller {
  final BookRepository bookRepository;

  const GetBestSeller({
    required this.bookRepository,
  });

  Future<Pagination<Book>> call() async {
    return await bookRepository.getBooks(
      parameters: const BookParameters(
        division: Division.bestSeller,
      ),
    );
  }
}
