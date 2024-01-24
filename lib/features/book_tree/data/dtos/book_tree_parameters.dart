import 'package:bookforest/core/domain/entities/enums/book_tree_options.dart';
import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_tree_parameters.g.dart';

@JsonSerializable()
class BookTreeParameters {
  final int itemSize;
  final String searchValue;
  final String? cursor;
  final BookTreeOptions options;
  final Division division;

  const BookTreeParameters({
    this.itemSize = 15,
    this.searchValue = '',
    this.cursor,
    this.options = BookTreeOptions.all,
    this.division = Division.all,
  });

  factory BookTreeParameters.fromJson(Map<String, dynamic> json) =>
      _$BookTreeParametersFromJson(json);

  Map<String, dynamic> toJson() => _$BookTreeParametersToJson(this);
}
