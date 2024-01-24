import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/network/dio_provider.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book_forest/data/dtos/book_forest_parameters.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_forest_repository.g.dart';

@riverpod
BookForestRepository bookForestRepository(BookForestRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return BookForestRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class BookForestRepository {
  factory BookForestRepository(Dio dio, {String baseUrl}) =
      _BookForestRepository;

  @GET('/book-forests')
  Future<Pagination<BookForest>> getBookForest({
    @Queries() BookForestParameters parameters = const BookForestParameters(),
  });
}
