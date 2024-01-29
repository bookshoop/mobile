import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';

class LibraryTab extends StatefulWidget {
  const LibraryTab({
    super.key,
  });

  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab>
    with SingleTickerProviderStateMixin {
  late final tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Color(0xFFD2B48C);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.size),
          child: Row(
            children: [
              Expanded(
                child: TabBar(
                  indicatorWeight: 2.5.size,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: AppThemeData.semiBold_15,
                  unselectedLabelStyle: AppThemeData.medium_15,
                  unselectedLabelColor: Colors.black,
                  controller: tabController,
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Tab(
                      text: '기본서재',
                      height: 45.size,
                    ),
                    Tab(
                      text: '추가서재',
                      height: 45.size,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.add,
                size: 26.size,
                color: AppThemeData.darkGrey,
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(24.size),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '책장11',
                        style: AppThemeData.medium_18,
                      ),
                      EmptySpace(height: 10.size),
                      Wrap(
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            8,
                            (index) {
                              const length = 8;
                              if (index == length - 1) {
                                return Container(
                                  width: (SizeUtil.deviceWidth - 80.size) / 2,
                                  height: (SizeUtil.deviceWidth - 80.size) / 2,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: color,
                                        width:
                                            index % 2 != 0 ? 3.size : 7.5.size,
                                      ),
                                      right: BorderSide(
                                        color: color,
                                        width:
                                            index % 2 == 0 ? 3.size : 7.5.size,
                                      ),
                                      top: BorderSide(
                                        color: color,
                                        width: (index == 0 || index == 1)
                                            ? 7.5.size
                                            : 3.size,
                                      ),
                                      bottom: BorderSide(
                                        color: color,
                                        width: (index == length - 2 ||
                                                index == length - 1)
                                            ? 7.5.size
                                            : 3.size,
                                      ),
                                    ),
                                    gradient: LinearGradient(
                                      stops: [0.75, 1],
                                      colors: [
                                        Colors.white,
                                        Color.fromARGB(255, 197, 197, 197),
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 50.size,
                                      color: AppThemeData.lightGrey,
                                    ),
                                  ),
                                );
                              }
                              return Container(
                                width: (SizeUtil.deviceWidth - 80.size) / 2,
                                height: (SizeUtil.deviceWidth - 80.size) / 2,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: color,
                                      width: index % 2 != 0 ? 3.size : 7.5.size,
                                    ),
                                    right: BorderSide(
                                      color: color,
                                      width: index % 2 == 0 ? 3.size : 7.5.size,
                                    ),
                                    top: BorderSide(
                                      color: color,
                                      width: (index == 0 || index == 1)
                                          ? 7.5.size
                                          : 3.size,
                                    ),
                                    bottom: BorderSide(
                                      color: color,
                                      width: (index == length - 2 ||
                                              index == length - 1)
                                          ? 7.5.size
                                          : 3.size,
                                    ),
                                  ),
                                  gradient: LinearGradient(
                                    stops: [0.75, 1],
                                    colors: [
                                      Colors.white,
                                      Color.fromARGB(255, 197, 197, 197),
                                    ],
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      '$index책칸',
                                      style: AppThemeData.regular_15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: List.generate(
                                        7,
                                        (index) => Container(
                                          width: 10.size,
                                          height:
                                              (SizeUtil.deviceWidth - 80.size) /
                                                  (4 - index / 5),
                                          color:
                                              Colors.accents[15 % (index + 2)],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList()),
                      EmptySpace(height: 20.size),
                      Text(
                        '책장22',
                        style: AppThemeData.medium_18,
                      ),
                      EmptySpace(height: 10.size),
                      Wrap(
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            2,
                            (index) {
                              const length = 2;
                              if (index == length - 1) {
                                return Container(
                                  width: (SizeUtil.deviceWidth - 80.size) / 2,
                                  height: (SizeUtil.deviceWidth - 80.size) / 2,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: color,
                                        width:
                                            index % 2 != 0 ? 3.size : 7.5.size,
                                      ),
                                      right: BorderSide(
                                        color: color,
                                        width:
                                            index % 2 == 0 ? 3.size : 7.5.size,
                                      ),
                                      top: BorderSide(
                                        color: color,
                                        width: (index == 0 || index == 1)
                                            ? 7.5.size
                                            : 3.size,
                                      ),
                                      bottom: BorderSide(
                                        color: color,
                                        width: (index == length - 2 ||
                                                index == length - 1)
                                            ? 7.5.size
                                            : 3.size,
                                      ),
                                    ),
                                    gradient: LinearGradient(
                                      stops: [0.75, 1],
                                      colors: [
                                        Colors.white,
                                        Color.fromARGB(255, 197, 197, 197),
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 50.size,
                                      color: AppThemeData.lightGrey,
                                    ),
                                  ),
                                );
                              }
                              return Container(
                                width: (SizeUtil.deviceWidth - 80.size) / 2,
                                height: (SizeUtil.deviceWidth - 80.size) / 2,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: color,
                                      width: index % 2 != 0 ? 3.size : 7.5.size,
                                    ),
                                    right: BorderSide(
                                      color: color,
                                      width: index % 2 == 0 ? 3.size : 7.5.size,
                                    ),
                                    top: BorderSide(
                                      color: color,
                                      width: (index == 0 || index == 1)
                                          ? 7.5.size
                                          : 3.size,
                                    ),
                                    bottom: BorderSide(
                                      color: color,
                                      width: (index == length - 2 ||
                                              index == length - 1)
                                          ? 7.5.size
                                          : 3.size,
                                    ),
                                  ),
                                  gradient: LinearGradient(
                                    stops: [0.75, 1],
                                    colors: [
                                      Colors.white,
                                      Color.fromARGB(255, 197, 197, 197),
                                    ],
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      '$index책칸',
                                      style: AppThemeData.regular_15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: List.generate(
                                        7,
                                        (index) => Container(
                                          width: 10.size,
                                          height:
                                              (SizeUtil.deviceWidth - 80.size) /
                                                  (4 - index / 5),
                                          color:
                                              Colors.accents[15 % (index + 2)],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList()),
                    ],
                  ),
                ),
              ),
              Text('추가서재'),
            ],
          ),
        ),
      ],
    );
  }
}
