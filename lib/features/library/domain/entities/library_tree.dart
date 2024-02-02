import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_tree.g.dart';
part 'library_tree.freezed.dart';

@freezed
class LibraryTree with _$LibraryTree {
  const factory LibraryTree({
    required int id,
    required String name,
    required List<LibraryTree> children,
  }) = _LibraryTree;

  factory LibraryTree.fromJson(Map<String, dynamic> json) =>
      _$LibraryTreeFromJson(json);
}
