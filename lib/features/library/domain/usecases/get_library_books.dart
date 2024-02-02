import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/library/data/dtos/library_parameters.dart';
import 'package:bookforest/features/library/data/repositories/library_repository.dart';
import 'package:bookforest/features/library/data/repositories/mock/mock_library_repository.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_library_books.g.dart';

@riverpod
GetLibraryBooks getLibraryBooks(GetLibraryBooksRef ref) {
  // final libraryRepository = ref.watch(libraryRepositoryProvider);
  final libraryRepository = MockLibraryRepository();
  return GetLibraryBooks(libraryRepository: libraryRepository);
}

class GetLibraryBooks {
  final LibraryRepository libraryRepository;

  const GetLibraryBooks({
    required this.libraryRepository,
  });

  Future<Pagination<LibraryBook>> call({LibraryParameters? parameters}) async {
    return await libraryRepository.getLibraryBook(
      parameters: parameters,
    );
  }
}
