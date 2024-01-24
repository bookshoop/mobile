import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/network/dio_provider.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book_tree/data/dtos/book_tree_parameters.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_tree_repository.g.dart';

@riverpod
BookTreeRepository bookTreeRepository(BookTreeRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return BookTreeRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class BookTreeRepository {
  factory BookTreeRepository(Dio dio, {String baseUrl}) = _BookTreeRepository;

  @GET('/book-trees')
  Future<Pagination<BookTree>> getBookTrees({
    @Queries() BookTreeParameters parameters = const BookTreeParameters(),
  });
}
