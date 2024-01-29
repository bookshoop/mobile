import 'package:flutter/material.dart';

Future<T?> customBottomSheet<T>(BuildContext context, {required Widget child}) {
  return showModalBottomSheet(
    context: context,
    elevation: 0,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    scrollControlDisabledMaxHeightRatio: 0.5,
    useSafeArea: true,
    builder: (_) => child,
  );
}
