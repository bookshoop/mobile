import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_parameters.g.dart';

@JsonSerializable()
class PagiantionParameters {
  final int itemSize;
  final String searchValue;
  final String? cursor;

  const PagiantionParameters({
    this.itemSize = 15,
    this.searchValue = '',
    this.cursor,
  });

  factory PagiantionParameters.fromJson(Map<String, dynamic> json) =>
      _$PagiantionParametersFromJson(json);

  Map<String, dynamic> toJson() => _$PagiantionParametersToJson(this);
}
