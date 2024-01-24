import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:flutter/material.dart';

class BookTreeListCard extends StatelessWidget {
  final BookTree bookTree;

  const BookTreeListCard({
    super.key,
    required this.bookTree,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        padding: EdgeInsets.all(14.size),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.size),
          color: AppThemeData.backGroundColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Flexible(
              flex: 70,
              child: Column(
                children: [
                  Image.network(
                    'https://image.yes24.com/goods/106400867/XL',
                    width: 70.size,
                    height: 100.size,
                    fit: BoxFit.cover,
                  ),
                  const EmptySpace(height: 5),
                  Text(
                    '럭키드로우 럭키드로우',
                    style: AppThemeData.semiBold_12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const EmptySpace(width: 21),
            Flexible(
              flex: 222,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '럭키드로우를 읽고, 내 20대를 돌아보았다',
                    style: AppThemeData.semiBold_14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const EmptySpace(height: 6),
                  Text(
                    '조금만 더 이책을 빨리알았더라면, 인생에서 더 많은 레버를 당기고 지금쯤 덜 후회하는 삶을 살지 않았을까 라는 생각이 조금만 더 이책을 빨리알았더라면, 인생에서 더 많은 레버를 당기고 지금쯤 덜 후회하는 삶을 살지 않았을까 라는 생각이 ',
                    style: AppThemeData.regular_12,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const EmptySpace(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_sharp,
                        size: 16.size,
                        color: AppThemeData.mainColor,
                      ),
                      const EmptySpace(width: 2),
                      Text(
                        '16',
                        style: AppThemeData.medium_12.copyWith(
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  const EmptySpace(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '2023.8.1',
                        style: AppThemeData.medium_12.copyWith(
                          height: 1.2,
                        ),
                      ),
                      const EmptySpace(width: 6),
                      Text(
                        'flyingsuda',
                        style: AppThemeData.medium_12.copyWith(
                          height: 1.2,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookTreeListCardShimmer extends StatelessWidget {
  const BookTreeListCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100.size,
          height: 120.size,
          color: Colors.white,
        ),
        const EmptySpace(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const EmptySpace(height: 10),
            Container(
              width: 150.size,
              height: 15.size,
              color: Colors.white,
            ),
            const EmptySpace(height: 10),
            Container(
              width: 120.size,
              height: 15.size,
              color: Colors.white,
            ),
            const EmptySpace(height: 10),
            Container(
              width: 120.size,
              height: 15.size,
              color: Colors.white,
            ),
            const EmptySpace(height: 10),
            Container(
              width: 120.size,
              height: 15.size,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
