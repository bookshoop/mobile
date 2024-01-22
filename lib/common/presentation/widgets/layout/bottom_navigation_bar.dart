import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          expectSize(60) + (bottomPadding > 0 ? bottomPadding : expectSize(5)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            color: Colors.black.withOpacity(0.05),
            blurRadius: 2,
          ),
        ],
      ),
      child: BottomNavigationBar(
        iconSize: expectSize(25),
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedFontSize: expectSize(11),
        selectedLabelStyle: AppThemeData.regular_11,
        selectedItemColor: AppThemeData.mainColor,
        unselectedFontSize: expectSize(11),
        unselectedLabelStyle: AppThemeData.regular_11,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: '우리집서재',
            icon: Padding(
              padding: EdgeInsets.only(bottom: expectSize(4)),
              child: Image.asset(
                'assets/images/icon/my_book_shelf.png',
                width: expectSize(25),
                height: expectSize(25),
                color: currentIndex == 0 ? AppThemeData.mainColor : null,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '둘러보기',
            icon: Image.asset(
              'assets/images/icon/book_travel.png',
              width: expectSize(25),
              height: expectSize(25),
              color: currentIndex == 1 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '홈',
            icon: Image.asset(
              'assets/images/icon/bookforest.png',
              width: expectSize(25),
              height: expectSize(25),
              color: currentIndex == 2 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '독서노트',
            icon: Image.asset(
              'assets/images/icon/book_tree.png',
              width: expectSize(25),
              height: expectSize(25),
              color: currentIndex == 3 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '마이페이지',
            icon: Image.asset(
              'assets/images/icon/mypage.png',
              width: expectSize(25),
              height: expectSize(25),
              color: currentIndex == 4 ? AppThemeData.mainColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
