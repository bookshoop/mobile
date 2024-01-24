import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_appbar.dart';
import 'package:bookforest/core/presentation/widgets/layout/custom_scaffold.dart';
import 'package:bookforest/core/presentation/widgets/sliver_header_delegate.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/search/presentation/widgets/user_list_card.dart';
import 'package:flutter/material.dart';
import 'package:bookforest/core/presentation/widgets/search_textfield.dart';

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
          left: 24.size,
          right: 24.size,
        ),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              floating: true,
              delegate: SliverHeaderDelegate(
                maxHeight: 74.size,
                minHeight: 74.size,
                child: Container(
                  height: 74.size,
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
