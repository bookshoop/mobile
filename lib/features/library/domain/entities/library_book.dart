import 'package:bookforest/features/book/domain/entities/simple_book.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_book.g.dart';
part 'library_book.freezed.dart';

@freezed
class LibraryBook with _$LibraryBook {
  const factory LibraryBook({
    required int id,
    required Library library,
    required SimpleBook book,
  }) = _LibraryBook;

  factory LibraryBook.fromJson(Map<String, dynamic> json) =>
      _$LibraryBookFromJson(json);
}
