import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
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
      buttonSize: Size(expectSize(50), expectSize(50)),
      elevation: 3,
      renderOverlay: false,
      icon: Icons.add,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: expectSize(24),
      ),
      childrenButtonSize: Size(expectSize(45), expectSize(45)),
      spaceBetweenChildren: expectSize(5),
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
