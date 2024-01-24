import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_shelf/presentation/widgets/floating_button_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BookShelfFloatingButton extends StatelessWidget {
  const BookShelfFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: AppThemeData.mainColor,
      buttonSize: Size(50.size, 50.size),
      elevation: 3,
      renderOverlay: false,
      icon: Icons.add,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 24.size,
      ),
      childrenButtonSize: Size(45.size, 45.size),
      spaceBetweenChildren: 5.size,
      children: [
        FloatinButtonChild(
          iconData: Icons.camera_alt_outlined,
          label: '사진으로 등록',
          onTap: () {},
        ),
        FloatinButtonChild(
          iconData: Icons.center_focus_weak,
          label: '바코드 등록',
          onTap: () {},
        ),
        FloatinButtonChild(
          iconData: Icons.search,
          label: '검색으로 등록',
          onTap: () {},
        ),
        FloatinButtonChild(
          iconData: Icons.insert_drive_file_outlined,
          label: '엑셀로 등록',
          onTap: () {},
        ),
        FloatinButtonChild(
          iconData: Icons.create_outlined,
          label: '직접 등록',
          onTap: () {},
        ),
      ],
    );
  }
}
