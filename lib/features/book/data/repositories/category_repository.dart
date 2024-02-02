import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/network/dio_provider.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final baseUrl = Config.instance.baseUrl;
  return CategoryRepository(dio, baseUrl: baseUrl);
}

@RestApi()
abstract class CategoryRepository {
  factory CategoryRepository(Dio dio, {String baseUrl}) = _CategoryRepository;

  @GET('/category')
  Future<List<BookCategory>> getAllCategory();
}
