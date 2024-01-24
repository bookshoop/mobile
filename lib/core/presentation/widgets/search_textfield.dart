import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
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
      height: 42.size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.size),
        border: Border.all(
          color: const Color.fromRGBO(123, 135, 148, 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.size),
            child: SvgPicture.asset(
              'assets/images/icon/search.svg',
              width: 24.size,
              height: 24.size,
            ),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 19.size,
                  bottom: 10.size,
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
