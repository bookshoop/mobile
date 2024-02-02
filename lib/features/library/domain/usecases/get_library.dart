import 'package:bookforest/features/library/data/repositories/library_repository.dart';
import 'package:bookforest/features/library/data/repositories/mock/mock_library_repository.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:bookforest/features/library/domain/entities/library_tree.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_library.g.dart';

@riverpod
GetLibrary getLibrary(GetLibraryRef ref) {
  // final libraryRepository = ref.watch(libraryRepositoryProvider);
  final libraryRepository = MockLibraryRepository();
  return GetLibrary(libraryRepository: libraryRepository);
}

class GetLibrary {
  const GetLibrary({
    required this.libraryRepository,
  });

  final LibraryRepository libraryRepository;

  Future<List<Library>> call() async {
    final libraryTree = await libraryRepository.getLibrary();
    return _flattenDeep(libraryTree);
  }

  List<Library> _flattenDeep(List<LibraryTree> list) {
    List<Library> flatList = [];

    void flattenHelper(List<LibraryTree> list) {
      for (LibraryTree item in list) {
        flatList.add(Library(id: item.id, name: item.name));
        if (item.children.isNotEmpty) {
          flattenHelper(item.children);
        }
      }
    }

    flattenHelper(list);

    return flatList;
  }
}
