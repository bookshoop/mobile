import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/library/domain/entities/library.dart';
import 'package:flutter/material.dart';

class LibrarySelector extends StatelessWidget {
  const LibrarySelector({
    super.key,
    required this.allLibrary,
    required this.selectedLibrary,
    this.onTap,
  });

  final List<Library> selectedLibrary;
  final List<Library> allLibrary;
  final Function(Library library)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '위치 선택',
          style: AppThemeData.medium_18,
        ),
        Container(
          height: 40.size,
          padding: EdgeInsets.symmetric(vertical: 5.size),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final library = allLibrary[index];
              final selected = selectedLibrary.contains(library);
              return InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  if (onTap != null) {
                    onTap!(library);
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.size,
                    horizontal: 10.size,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.size),
                    border: Border.all(
                      color: AppThemeData.mainColor,
                      width: 1.5.size,
                    ),
                    color: selected ? AppThemeData.mainColor : Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    library.name,
                    style: TextStyle(
                      fontSize: 15.size,
                      fontWeight: FontWeight.w500,
                      height: 1.1,
                      color: selected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 10.size,
            ),
            itemCount: allLibrary.length,
          ),
        ),
      ],
    );
  }
}
