import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination_parameters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_parameters.g.dart';

@JsonSerializable()
class BookParameters extends PagiantionParameters {
  final Division division;

  const BookParameters({
    super.itemSize = 15,
    super.searchValue = '',
    super.cursor,
    this.division = Division.all,
  });

  factory BookParameters.fromJson(Map<String, dynamic> json) =>
      _$BookParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BookParametersToJson(this);
}
