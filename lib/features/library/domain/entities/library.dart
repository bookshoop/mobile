import 'package:freezed_annotation/freezed_annotation.dart';

part 'library.g.dart';
part 'library.freezed.dart';

@freezed
class Library with _$Library {
  const factory Library({
    required int id,
    required String name,
  }) = _Library;

  factory Library.fromJson(Map<String, dynamic> json) =>
      _$LibraryFromJson(json);
}
