import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/network/dio_provider.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/library/data/dtos/library_parameters.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_repository.g.dart';

@riverpod
LibraryRepository libraryRepository(LibraryRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return LibraryRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class LibraryRepository {
  factory LibraryRepository(Dio dio, {String baseUrl}) = _LibraryRepository;

  @GET('/library/books')
  Future<Pagination<LibraryBook>> getLibraryBook({
    @Queries() LibraryParameters? parameters = const LibraryParameters(),
  });
}
