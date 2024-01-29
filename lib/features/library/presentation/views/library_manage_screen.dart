import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/features/library/presentation/widgets/library_tab.dart';
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
      body: LibraryTab(),
    );
  }
}


// Padding(
//         padding: EdgeInsets.only(
//           top: 24.size,
//           left: 24.size,
//           right: 24.size,
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '나의 책숲',
//                     style: AppThemeData.semiBold_18,
//                   ),
//                   Icon(
//                     Icons.add,
//                     size: 26.size,
//                   ),
//                 ],
//               ),
//               EmptySpace(height: 10.size),
//               Padding(
//                 padding: EdgeInsets.only(left: 10.size),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: InkWell(
//                         onTap: () {},
//                         child: Row(
//                           children: [
//                             const Icon(Icons.keyboard_arrow_right),
//                             Text(
//                               '기본서재',
//                               style: AppThemeData.medium_16,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.more_vert_outlined,
//                         size: 22.size,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
