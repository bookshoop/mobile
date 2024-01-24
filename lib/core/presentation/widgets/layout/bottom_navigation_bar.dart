import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
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
      height: 60.size +
          (SizeUtil.bottomPadding > 0 ? SizeUtil.bottomPadding : 5.size),
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
        iconSize: 25.size,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedFontSize: 11.size,
        selectedLabelStyle: AppThemeData.regular_11,
        selectedItemColor: AppThemeData.mainColor,
        unselectedFontSize: 11.size,
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
              padding: EdgeInsets.only(bottom: 4.size),
              child: Image.asset(
                'assets/images/icon/my_book_shelf.png',
                width: 25.size,
                height: 25.size,
                color: currentIndex == 0 ? AppThemeData.mainColor : null,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '둘러보기',
            icon: Image.asset(
              'assets/images/icon/book_travel.png',
              width: 25.size,
              height: 25.size,
              color: currentIndex == 1 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '홈',
            icon: Image.asset(
              'assets/images/icon/bookforest.png',
              width: 25.size,
              height: 25.size,
              color: currentIndex == 2 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '독서노트',
            icon: Image.asset(
              'assets/images/icon/book_tree.png',
              width: 25.size,
              height: 25.size,
              color: currentIndex == 3 ? AppThemeData.mainColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: '마이페이지',
            icon: Image.asset(
              'assets/images/icon/mypage.png',
              width: 25.size,
              height: 25.size,
              color: currentIndex == 4 ? AppThemeData.mainColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
