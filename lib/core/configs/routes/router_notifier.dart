import 'package:bookforest/features/auth/presentation/providers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// goRouter user 데이터 변경 감지
final routerNotifier = ChangeNotifierProvider<RouterNotifier>(
  (ref) => RouterNotifier(ref: ref),
);

class RouterNotifier extends ChangeNotifier {
  final Ref ref;

  RouterNotifier({
    required this.ref,
  }) {
    ref.listen(authControllerProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }
}
