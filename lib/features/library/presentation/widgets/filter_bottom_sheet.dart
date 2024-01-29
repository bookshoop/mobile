import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/custom_button.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.size,
        horizontal: 20.size,
      ),
      child: Wrap(
        children: [
          Column(
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
                    return InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
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
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            fontSize: 15.size,
                            fontWeight: FontWeight.w500,
                            height: 1.1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.size,
                  ),
                  itemCount: 5,
                ),
              ),
              EmptySpace(height: 10.size),
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
                    return InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
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
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            fontSize: 15.size,
                            fontWeight: FontWeight.w500,
                            height: 1.1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.size,
                  ),
                  itemCount: 15,
                ),
              ),
              EmptySpace(height: 10.size),
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: CustomButton(
                      text: '취소',
                      height: 40.size,
                      color: AppThemeData.darkGrey,
                      onTap: context.pop,
                    ),
                  ),
                  SizedBox(
                    width: 10.size,
                  ),
                  Flexible(
                    flex: 7,
                    child: CustomButton(
                      text: '적용하기',
                      height: 40.size,
                      onTap: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
