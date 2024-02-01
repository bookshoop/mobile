import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:bookforest/features/book/domain/entities/simple_book.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_state.freezed.dart';

@freezed
class LibraryState with _$LibraryState {
  const LibraryState._();

  const factory LibraryState({
    @Default('') String searchValue,
    @Default([]) List<Library> library,
    @Default([]) List<BookCategory> category,
    @Default(Pagination.loading()) Pagination<SimpleBook> libraryBooks,
    @Default(false) bool manageMode,
  }) = _LibraryState;

  String get selectedLibrary {
    if (library.isEmpty) {
      return '위치선택';
    }
    if (library.length == 1) {
      return library.first.name;
    }
    return '${library.first.name}외 ${library.length - 1}';
  }

  String get selectedCategory {
    if (category.isEmpty) {
      return '장르선택';
    }
    if (category.length == 1) {
      return category.first.name;
    }
    return '${category.first.name}외 ${category.length - 1}';
  }
}
