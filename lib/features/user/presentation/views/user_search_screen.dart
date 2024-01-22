import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/common/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/common/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/search/presentation/widgets/user_list_card.dart';
import 'package:flutter/material.dart';
import 'package:bookforest/common/presentation/widgets/search_textfield.dart';

class UserSearchScreen extends StatelessWidget {
  static String get routeName => '/search/user';
  final String value;

  const UserSearchScreen({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbar: const CustomAppbar(
        title: '유저 검색',
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: expectSize(24),
          right: expectSize(24),
        ),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              floating: true,
              delegate: SliverHeaderDelegate(
                maxHeight: expectSize(74),
                minHeight: expectSize(74),
                child: Container(
                  height: expectSize(74),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const EmptySpace(height: 16),
                      SearchTextfield(
                        controller: TextEditingController(text: value),
                        hintText: '독서메이트를 찾아보아요!',
                        onSubmitted: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList.separated(
              itemCount: 20,
              itemBuilder: (context, index) => const UserListCard(),
              separatorBuilder: (context, _) => const EmptySpace(height: 16),
            ),
          ],
        ),
      ),
    );
  }
}
