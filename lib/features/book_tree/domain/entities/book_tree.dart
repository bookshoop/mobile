import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_tree.g.dart';
part 'book_tree.freezed.dart';

@freezed
class BookTree with _$BookTree {
  const factory BookTree({
    required int id,
    required String title,
    required String content,
    required int likes,
    required bool isLike,
    required Book book,
    required DateTime createDateTime,
    required User user,
  }) = _BookTree;

  factory BookTree.fromJson(Map<String, dynamic> json) =>
      _$BookTreeFromJson(json);
}
