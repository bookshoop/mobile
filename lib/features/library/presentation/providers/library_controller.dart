import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/library/presentation/providers/states/library_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_controller.g.dart';

@riverpod
class LibraryController extends _$LibraryController {
  @override
  LibraryState build() {
    return LibraryState();
  }
}
