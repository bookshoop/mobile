import 'package:bookforest/common/domain/entities/enums/division.dart';
import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book_forest/data/dtos/book_forest_parameters.dart';
import 'package:bookforest/features/book_forest/data/repositories/book_forest_repository.dart';
import 'package:bookforest/features/book_forest/data/repositories/mock/mock_book_forest_repository.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_popular_book_forest.g.dart';

@riverpod
GetPopularBookForest getPopularBookForest(GetPopularBookForestRef ref) {
  // TODO 실제 API 연결
  return GetPopularBookForest(bookForestRepository: MockBookForestRepository());
}

class GetPopularBookForest {
  final BookForestRepository bookForestRepository;

  const GetPopularBookForest({
    required this.bookForestRepository,
  });

  Future<Pagination<BookForest>> call() async {
    return await bookForestRepository.getBookForest(
      parameters: const BookForestParameters(
        division: Division.popularBookForest,
      ),
    );
  }
}
