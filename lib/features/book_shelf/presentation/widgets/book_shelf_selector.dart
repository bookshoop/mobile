import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownSelector extends StatefulWidget {
  final List<String> dropdownItems;
  final Widget? endButton;
  final VoidCallback? onButtonTap;
  final String hintText;
  final String? selectedValue;

  const DropdownSelector({
    super.key,
    required this.dropdownItems,
    required this.hintText,
    this.endButton,
    this.onButtonTap,
    this.selectedValue,
  });

  @override
  State<DropdownSelector> createState() => _DropdownSelectorState();
}

class _DropdownSelectorState extends State<DropdownSelector> {
  @override
  void initState() {
    selectedValue = widget.selectedValue;
    super.initState();
  }

  String? selectedValue;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            style: AppThemeData.medium_15.copyWith(
              color: Colors.black,
            ),
            customButton: SizedBox(
              width: expectSize(150),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      selectedValue ?? widget.hintText,
                      style: AppThemeData.medium_15,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const EmptySpace(width: 4),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 100),
                    turns: isOpen ? 0.5 : 0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: expectSize(24),
                    ),
                  ),
                ],
              ),
            ),
            items: widget.dropdownItems.map((String item) {
              return DropdownItem<String>(
                value: item,
                height: expectSize(40),
                child: Text(
                  item,
                  style: AppThemeData.medium_15,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
            value: selectedValue,
            onChanged: (value) {
              selectedValue = value;
              setState(() {});
            },
            onMenuStateChange: (state) {
              isOpen = state;
              setState(() {});
            },
            dropdownStyleData: DropdownStyleData(
              elevation: 0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(expectSize(8)),
                border: Border.all(
                  color: const Color.fromRGBO(175, 177, 182, 1),
                ),
                color: Colors.white,
              ),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: EdgeInsets.only(
                left: expectSize(16),
                right: expectSize(16),
              ),
            ),
          ),
        ),
        if (widget.endButton != null)
          InkWell(
            onTap: widget.onButtonTap,
            child: widget.endButton!,
          ),
        // InkWell(
        //   child: Row(
        //     children: [
        //       Text(
        //         '서재관리\u{1F4DA}',
        //         style: AppThemeData.medium_15,
        //       ),
        //       Icon(
        //         Icons.keyboard_arrow_right,
        //         size: expectSize(24),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
