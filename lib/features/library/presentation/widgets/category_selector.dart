import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book_category.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    super.key,
    required this.selectedCategory,
    required this.allCategory,
    this.onTap,
  });

  final List<BookCategory> selectedCategory;
  final List<BookCategory> allCategory;
  final Function(BookCategory category)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '장르 선택',
          style: AppThemeData.medium_18,
        ),
        Container(
          height: 40.size,
          padding: EdgeInsets.symmetric(vertical: 5.size),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final category = allCategory[index];
              final selected = selectedCategory.contains(category);
              return InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  if (onTap != null) {
                    onTap!(category);
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
                    category.name,
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
            itemCount: allCategory.length,
          ),
        ),
      ],
    );
  }
}
