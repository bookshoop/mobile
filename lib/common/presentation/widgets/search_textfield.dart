import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Function(String value)? onSubmitted;

  const SearchTextfield({
    super.key,
    this.controller,
    required this.hintText,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: expectSize(42),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(expectSize(8)),
        border: Border.all(
          color: const Color.fromRGBO(123, 135, 148, 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: expectSize(12)),
            child: SvgPicture.asset(
              'assets/images/icon/search.svg',
              width: expectSize(24),
              height: expectSize(24),
            ),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: expectSize(19),
                  bottom: expectSize(10),
                ),
                hintText: hintText,
                hintStyle: AppThemeData.semiBold_16,
              ),
              onSubmitted: onSubmitted,
              style: AppThemeData.semiBold_16,
            ),
          ),
        ],
      ),
    );
  }
}
