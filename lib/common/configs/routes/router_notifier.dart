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
    // ref.listen(userProvider, (previous, next) {
    //   if (previous != next) {
    //     notifyListeners();
    //   }
    // });
  }
}
