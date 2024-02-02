import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/domain/entities/simple_book.dart';
import 'package:bookforest/features/library/data/dtos/library_parameters.dart';
import 'package:bookforest/features/library/data/repositories/library_repository.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:bookforest/features/library/domain/entities/library_tree.dart';

class MockLibraryRepository implements LibraryRepository {
  @override
  Future<List<LibraryTree>> getLibrary() async {
    return [
      const LibraryTree(
        id: 0,
        name: '서재서재',
        children: [
          LibraryTree(
            id: 2,
            name: '책장책장',
            children: [
              LibraryTree(
                id: 6,
                name: '책칸책칸',
                children: [],
              ),
              LibraryTree(
                id: 7,
                name: '두번째 책칸',
                children: [],
              ),
              LibraryTree(
                id: 8,
                name: '세번째 책칸',
                children: [],
              ),
            ],
          ),
          LibraryTree(
            id: 3,
            name: '두번째 책장책장',
            children: [],
          ),
        ],
      ),
      const LibraryTree(
        id: 1,
        name: '두번째 서재',
        children: [
          LibraryTree(
            id: 4,
            name: '세번째 책장책장',
            children: [],
          ),
          LibraryTree(
            id: 5,
            name: '네번째 책장책장',
            children: [],
          ),
        ],
      ),
    ];
  }

  @override
  Future<Pagination<LibraryBook>> getLibraryBook({
    LibraryParameters? parameters = const LibraryParameters(),
  }) async {
    return Pagination.data(
      content: List.generate(
        50,
        (index) => LibraryBook(
          id: index,
          library: Library(id: index, name: '책장 $index'),
          book: SimpleBook(
            id: index,
            title: '책제목 $index',
            writer: '글쓴이 $index',
            thumbnail: 'https://image.yes24.com/goods/106400867/XL',
          ),
        ),
      ),
      hasMore: true,
    );
  }
}
