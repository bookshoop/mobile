import 'package:bookforest/core/domain/entities/pagination_parameters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_parameters.g.dart';

@JsonSerializable()
class LibraryParameters extends PagiantionParameters {
  final List<int>? library;
  final List<int>? category;

  const LibraryParameters({
    super.itemSize = 15,
    super.searchValue = '',
    super.cursor,
    this.category,
    this.library,
  });

  factory LibraryParameters.fromJson(Map<String, dynamic> json) =>
      _$LibraryParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LibraryParametersToJson(this);
}
