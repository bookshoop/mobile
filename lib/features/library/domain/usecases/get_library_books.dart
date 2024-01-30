import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/library/data/dtos/library_parameters.dart';
import 'package:bookforest/features/library/data/repositories/library_repository.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';

class GetLibraryBook {
  final LibraryRepository libraryRepository;

  const GetLibraryBook({
    required this.libraryRepository,
  });

  Future<Pagination<LibraryBook>> call(LibraryParameters? parameters) async {
    return await libraryRepository.getLibraryBook(
      parameters: parameters,
    );
  }
}
