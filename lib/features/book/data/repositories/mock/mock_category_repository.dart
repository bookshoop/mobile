import 'package:bookforest/features/book/data/repositories/category_repository.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';

class MockCategoryRepository implements CategoryRepository {
  @override
  Future<List<BookCategory>> getAllCategory() async {
    return List.generate(
      10,
      (index) => BookCategory(id: index + 1, name: '카테고리 $index'),
    );
  }
}
