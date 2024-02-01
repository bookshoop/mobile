import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_category.g.dart';
part 'book_category.freezed.dart';

@freezed
class BookCategory with _$BookCategory {
  const factory BookCategory({
    required int id,
    required String name,
  }) = _BookCategory;

  factory BookCategory.fromJson(Map<String, dynamic> json) =>
      _$BookCategoryFromJson(json);
}
