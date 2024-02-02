import 'package:bookforest/features/book/data/repositories/category_repository.dart';
import 'package:bookforest/features/book/data/repositories/mock/mock_category_repository.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_category.g.dart';

@riverpod
GetCategory getCategory(GetCategoryRef ref) {
  // final categoryRepository = ref.watch(categoryRepositoryProvider);
  final categoryRepository = MockCategoryRepository();
  return GetCategory(categoryRepository: categoryRepository);
}

class GetCategory {
  final CategoryRepository categoryRepository;

  const GetCategory({
    required this.categoryRepository,
  });

  Future<List<BookCategory>> call() async {
    return await categoryRepository.getAllCategory();
  }
}
