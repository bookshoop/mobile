import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.g.dart';
part 'pagination.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class Pagination<T> with _$Pagination<T> {
  const factory Pagination.data({
    // TODO content에 cursor 적용
    required List<T> content,
    required bool hasMore,
  }) = PaginationData;

  const factory Pagination.loading() = PaginationLoading;

  const factory Pagination.error({
    required String message,
  }) = PaginationError;

  factory Pagination.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationFromJson(json, fromJsonT);
}
