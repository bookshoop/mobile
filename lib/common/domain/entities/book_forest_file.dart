import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_forest_file.g.dart';
part 'book_forest_file.freezed.dart';

@freezed
class BookForestFile with _$BookForestFile {
  const factory BookForestFile({
    required int fileId,
  }) = _BookForestFile;

  factory BookForestFile.fromJson(Map<String, dynamic> json) =>
      _$BookForestFileFromJson(json);
}
