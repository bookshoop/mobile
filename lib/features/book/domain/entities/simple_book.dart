import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_book.g.dart';
part 'simple_book.freezed.dart';

@freezed
class SimpleBook with _$SimpleBook {
  const factory SimpleBook({
    required int id,
    required String title,
    required String writer,
    String? thumbnail,
  }) = _SimpleBook;

  factory SimpleBook.fromJson(Map<String, dynamic> json) =>
      _$SimpleBookFromJson(json);
}
