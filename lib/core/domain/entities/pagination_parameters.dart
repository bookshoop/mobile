import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_parameters.g.dart';
part 'pagination_parameters.freezed.dart';

@freezed
class PagiantionParameters with _$PagiantionParameters {
  const factory PagiantionParameters({
    @Default(15) int itemSize,
    @Default('') String searchValue,
    String? cursor,
  }) = _PagiantionParameters;

  factory PagiantionParameters.fromJson(Map<String, dynamic> json) =>
      _$PagiantionParametersFromJson(json);
}
