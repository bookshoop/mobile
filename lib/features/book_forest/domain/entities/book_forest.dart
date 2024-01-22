import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_forest.g.dart';
part 'book_forest.freezed.dart';

@freezed
class BookForest with _$BookForest {
  const factory BookForest({
    required int id,
    required String thumbnail,
    required String title,
  }) = _BookForest;

  factory BookForest.fromJson(Map<String, dynamic> json) =>
      _$BookForestFromJson(json);
}
