import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/data/dtos/book_parameters.dart';
import 'package:bookforest/features/book/data/repositories/book_repository.dart';
import 'package:bookforest/features/book/data/repositories/mock/mock_book_repository.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_recomment_book.g.dart';

@riverpod
GetRecommendBook getRecommendBook(GetRecommendBookRef ref) {
  return GetRecommendBook(bookRepository: MockBookRepository());
}

class GetRecommendBook {
  final BookRepository bookRepository;

  const GetRecommendBook({
    required this.bookRepository,
  });

  Future<Pagination<Book>> call() async {
    return await bookRepository.getBooks(
      parameters: const BookParameters(
        division: Division.recommended,
      ),
    );
  }
}
