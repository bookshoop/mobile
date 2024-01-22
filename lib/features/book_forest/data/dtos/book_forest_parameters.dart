import 'package:bookforest/common/domain/entities/enums/book_forest_options.dart';
import 'package:bookforest/common/domain/entities/enums/division.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_forest_parameters.g.dart';

@JsonSerializable()
class BookForestParameters {
  final int itemSize;
  final String searchValue;
  final String? cursor;
  final BookForestOptions22 options;
  final Division division;

  const BookForestParameters({
    this.itemSize = 15,
    this.searchValue = '',
    this.cursor,
    this.options = BookForestOptions22.recent,
    this.division = Division.all,
  });

  factory BookForestParameters.fromJson(Map<String, dynamic> json) =>
      _$BookForestParametersFromJson(json);

  Map<String, dynamic> toJson() => _$BookForestParametersToJson(this);
}
