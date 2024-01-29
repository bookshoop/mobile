import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:bookforest/core/utils/size_util.dart';

class LibraryManageScreen extends StatelessWidget {
  static String get routeName => '/library/manage';
  const LibraryManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: CustomAppbar(
        title: '서재관리',
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.size,
          right: 24.size,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
