import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.g.dart';
part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    String? thumbnail,
    required String title,
    required String writer,
    required String category,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
