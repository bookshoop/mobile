// import 'package:bookforest/core/configs/theme/theme.dart';
// import 'package:bookforest/core/presentation/widgets/empty_space.dart';
// import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
// import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
// import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
// import 'package:bookforest/core/utils/size_util.dart';
// import 'package:bookforest/features/book_forest/data/dtos/enum/book_forest_options.dart';
// import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
// import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_list_card.dart';
// import 'package:bookforest/features/book_shelf/presentation/widgets/book_shelf_selector.dart';
// import 'package:flutter/material.dart';
// import 'package:bookforest/core/presentation/widgets/search_textfield.dart';

// class BookForestListScreen extends StatelessWidget {
//   static String get routeName => '/bookforest';
//   final String? value;
//   final BookForestOptions option;

//   const BookForestListScreen({
//     super.key,
//     this.value,
//     this.option = BookForestOptions.recent,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       appbar: const CustomAppbar(
//         title: '너의 책숲은',
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(
//           left: 24.size,
//           right: 24.size,
//         ),
//         child: CustomScrollView(
//           slivers: [
//             SliverPersistentHeader(
//               floating: true,
//               delegate: SliverHeaderDelegate(
//                 maxHeight: 115.size,
//                 minHeight: 115.size,
//                 child: Container(
//                   color: Colors.white,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       const EmptySpace(height: 16),
//                       SearchTextfield(
//                         hintText: '책숲을 검색해보세요!',
//                         controller: TextEditingController(text: value ?? ''),
//                       ),
//                       const EmptySpace(height: 14),
//                       DropdownSelector(
//                         dropdownItems: BookForestOptions.values
//                             .map((e) => e.name)
//                             .toList(),
//                         hintText: BookForestOptions.recent.name,
//                         selectedValue: option.name,
//                         endButton: Row(
//                           children: [
//                             Text(
//                               '내 책숲도 소개하기 ',
//                               style: AppThemeData.medium_15,
//                             ),
//                             Icon(
//                               Icons.create_outlined,
//                               size: 24.size,
//                               color: AppThemeData.mainColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const EmptySpace(height: 16),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SliverGrid.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 15.size,
//               childAspectRatio: 0.7,
//               children: List.generate(
//                 16,
//                 (index) => BookForestListCard(
//                   bookForest: BookForest(
//                     id: index,
//                     thumbnail:
//                         'https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/168457922296384515.jpeg?w=720',
//                     title: '내 책숲 내 책숲 내 책숲 내 책숲 내 책숲 내 책숲 내 책숲 $index',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
