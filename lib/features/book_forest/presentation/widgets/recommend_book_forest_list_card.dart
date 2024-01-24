import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';

class RecommendBookForestListCard extends StatelessWidget {
  const RecommendBookForestListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://post-phinf.pstatic.net/MjAyMTA5MTVfMjQ5/MDAxNjMxNjk1MzU1MjI3.q2V4EmXYKCnhinl94MYdsx5Z98m_gQDo-_IvFgxkpa0g.fJxJrrwvEtBlBq5tMc1fF8y7R5E9m2edEP35B2vWJxYg.JPEG/6.jpg?type=w800_q75',
            width: 100.size,
            height: 100.size,
          ),
          const EmptySpace(width: 12),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '사랑방 같은 작은 동네 책방, 골목서재',
                  style: AppThemeData.medium_14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const EmptySpace(height: 8),
                Text(
                  '이런 곳에 서점이있어? 싶은 골목을 지나면, 아담하지만 잘 정돈된 작은 마당과, 마찬가지로 작고 깨끗한 모습을 가진 주택 건물이 나온다. 2층은 주인 분이 거주하시고...',
                  style: AppThemeData.medium_12,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
