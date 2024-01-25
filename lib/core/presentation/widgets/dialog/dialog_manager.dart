import 'package:bookforest/core/presentation/widgets/custom_button.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/core/configs/routes/gorouter_provider.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class DialogManager {
  static bool isDialogOn = false;

  static Future<T?> customAlertDialog<T>(
    BuildContext context, {
    required String title,
    required Widget content,
    String confirmText = '확인',
    VoidCallback? onConfirmTap,
  }) async {
    isDialogOn = true;
    final result = await showDialog<T>(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.size),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: SizeUtil.deviceWidth,
                  padding: EdgeInsets.all(24.size),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.size),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: AppThemeData.bold_20,
                      ),
                      EmptySpace(
                        height: 15.size,
                      ),
                      content,
                      EmptySpace(
                        height: 15.size,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              text: '취소',
                              height: 40.size,
                              onTap: context.pop,
                              color: AppThemeData.darkGrey,
                              textStyle: AppThemeData.semiBold_14.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          EmptySpace(
                            width: 8.size,
                          ),
                          Expanded(
                            child: CustomButton(
                              text: '확인',
                              height: 40.size,
                              textStyle: AppThemeData.semiBold_14.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    isDialogOn = false;
    return result;
  }

  // static Future<T?> customDialog<T>({
  //   required String title,
  //   required Widget content,
  //   required String confirmText,
  //   required String cancelText,
  //   required VoidCallback onConfirmTap,
  // }) async {
  //   return showDialog<T>(
  //     context: navigatorKey.currentContext!,
  //     barrierColor: Colors.black.withOpacity(0.6),
  //     builder: (context) {
  //       return Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 15.size),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(10.size),
  //               ),
  //               child: Material(
  //                 color: Colors.transparent,
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.stretch,
  //                   children: [
  //                     Padding(
  //                       padding: EdgeInsets.only(
  //                         top: 24.size,
  //                         left: 30.size,
  //                         right: 30.size,
  //                         bottom: 35.size,
  //                       ),
  //                       child: Column(
  //                         children: [
  //                           Text(
  //                             title,
  //                             // style: AppThemeData.bold_14.bold_20_15,
  //                           ),
  //                           const EmptySpace(height: 8),
  //                           content,
  //                         ],
  //                       ),
  //                     ),
  //                     IntrinsicHeight(
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         crossAxisAlignment: CrossAxisAlignment.stretch,
  //                         children: [
  //                           Expanded(
  //                             child: ElevatedButton(
  //                               style: ElevatedButton.styleFrom(
  //                                 backgroundColor: AppThemeData.mainColor,
  //                                 elevation: 0,
  //                                 fixedSize: Size.fromHeight(50.size),
  //                                 shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.only(
  //                                     bottomLeft: Radius.circular(10.size),
  //                                   ),
  //                                 ),
  //                               ),
  //                               onPressed: onConfirmTap,
  //                               child: FittedBox(
  //                                 child: Text(
  //                                   confirmText,
  //                                   style: AppThemeData.regular_15,
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                           Expanded(
  //                             child: ElevatedButton(
  //                               style: ElevatedButton.styleFrom(
  //                                 elevation: 0,
  //                                 backgroundColor: AppThemeData.darkGrey,
  //                                 fixedSize: Size.fromHeight(50.size),
  //                                 shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.only(
  //                                     bottomRight: Radius.circular(10.size),
  //                                   ),
  //                                 ),
  //                               ),
  //                               onPressed: () => context.pop(false),
  //                               child: FittedBox(
  //                                 child: Text(
  //                                   cancelText,
  //                                   style: AppThemeData.regular_15,
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  // static Future<T?> customProgress<T>({
  //   bool canPop = true,
  //   Future<T>? progress,
  // }) async {
  //   final result = await showDialog<T>(
  //     context: navigatorKey.currentContext!,
  //     barrierColor: Colors.black.withOpacity(0.5),
  //     builder: (context) {
  //       if (progress != null) {
  //         progress.then(
  //           (value) {
  //             context.pop(value);
  //           },
  //         );
  //       }
  //       return WillPopScope(
  //         onWillPop: () => Future.value(canPop),
  //         child: const Material(
  //           color: Colors.transparent,
  //           child: Center(
  //             child: CircularProgressIndicator(),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  //   return result;
  // }
}

class DialogText extends StatelessWidget {
  final String text;
  const DialogText(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppThemeData.regular_15,
      textAlign: TextAlign.center,
    );
  }
}
