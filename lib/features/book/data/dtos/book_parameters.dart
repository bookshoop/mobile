import 'package:bookforest/common/domain/entities/enums/division.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../book_forest/data/dtos/book_parameters.g.dart';

@JsonSerializable()
class BookParameters {
  final int itemSize;
  final String searchValue;
  final String? cursor;
  final Division division;

  const BookParameters({
    this.itemSize = 15,
    this.searchValue = '',
    this.cursor,
    this.division = Division.all,
  });

  factory BookParameters.fromJson(Map<String, dynamic> json) =>
      _$BookParametersFromJson(json);

  Map<String, dynamic> toJson() => _$BookParametersToJson(this);
}
