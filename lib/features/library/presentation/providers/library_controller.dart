import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:bookforest/features/book/domain/usecases/get_category.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:bookforest/features/library/domain/usecases/get_library.dart';
import 'package:bookforest/features/library/domain/usecases/get_library_books.dart';
import 'package:bookforest/features/library/presentation/providers/states/library_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_controller.g.dart';

@riverpod
class LibraryController extends _$LibraryController {
  @override
  LibraryState build() {
    _getAllCategory();
    _getAllLibrary();
    getLibraryBook();
    // ignore: prefer_const_constructors
    return LibraryState();
  }

  void _getAllCategory() async {
    final allCategory = await ref.watch(getCategoryProvider).call();
    state = state.copyWith(
      allCategory: allCategory,
    );
  }

  void _getAllLibrary() async {
    final allLibrary = await ref.watch(getLibraryProvider).call();
    state = state.copyWith(
      allLibrary: allLibrary,
    );
  }

  void getLibraryBook() async {
    final libraryBooks = await ref.watch(getLibraryBooksProvider).call();
    state = state.copyWith(
      libraryBooks: libraryBooks,
    );
  }

  void setFilter(List<BookCategory> category, List<Library> library) {
    state = state.copyWith(
      category: [...category],
      library: [...library],
    );
  }
}
