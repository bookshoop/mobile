import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book_tree/data/dtos/book_tree_parameters.dart';
import 'package:bookforest/features/book_tree/data/repositories/book_tree_repository.dart';
import 'package:bookforest/features/book_tree/data/repositories/mock/mock_book_tree_repository.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_popular_book_tree.g.dart';

@riverpod
GetPopularBookTree getPopularBookTree(GetPopularBookTreeRef ref) {
  return GetPopularBookTree(bookTreeRepository: MockBookTreeRepository());
}

class GetPopularBookTree {
  final BookTreeRepository bookTreeRepository;
  const GetPopularBookTree({
    required this.bookTreeRepository,
  });

  Future<Pagination<BookTree>> call() async {
    return await bookTreeRepository.getBookTrees(
      parameters: const BookTreeParameters(
        division: Division.popularBookTree,
      ),
    );
  }
}
