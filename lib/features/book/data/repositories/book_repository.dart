import 'package:bookforest/common/configs/flavor/config.dart';
import 'package:bookforest/common/configs/network/dio_provider.dart';
import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book/data/dtos/book_parameters.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_repository.g.dart';

@riverpod
BookRepository bookRepository(BookRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return BookRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class BookRepository {
  factory BookRepository(Dio dio, {String baseUrl}) = _BookRepository;

  @GET('/books')
  Future<Pagination<Book>> getBooks({
    @Queries() BookParameters parameters = const BookParameters(),
  });
}
