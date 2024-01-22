import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/common/configs/routes/gorouter_provider.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogManager {
  static bool isDialogOn = false;

  static Future<void> customAlertDialog({
    required String title,
    required Widget content,
    String confirmText = '확인',
    VoidCallback? onConfirmTap,
  }) async {
    isDialogOn = true;
    await showDialog(
      context: navigatorKey.currentContext!,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: expectSize(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(expectSize(10)),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: expectSize(24),
                          left: expectSize(30),
                          right: expectSize(30),
                          bottom: expectSize(35),
                        ),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: AppThemeData.regular_15,
                            ),
                            const EmptySpace(height: 8),
                            content,
                          ],
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size.fromHeight(expectSize(50)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(expectSize(10)),
                                      bottomRight:
                                          Radius.circular(expectSize(10)),
                                    ),
                                  ),
                                  backgroundColor: AppThemeData.mainColor,
                                ),
                                onPressed: onConfirmTap ?? context.pop,
                                child: FittedBox(
                                  child: Text(
                                    confirmText,
                                    style: AppThemeData.regular_15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    isDialogOn = false;
  }

  static Future<T?> customDialog<T>({
    required String title,
    required Widget content,
    required String confirmText,
    required String cancelText,
    required VoidCallback onConfirmTap,
  }) async {
    return showDialog<T>(
      context: navigatorKey.currentContext!,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: expectSize(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(expectSize(10)),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: expectSize(24),
                          left: expectSize(30),
                          right: expectSize(30),
                          bottom: expectSize(35),
                        ),
                        child: Column(
                          children: [
                            Text(
                              title,
                              // style: AppThemeData.bold_14.bold_20_15,
                            ),
                            const EmptySpace(height: 8),
                            content,
                          ],
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppThemeData.mainColor,
                                  elevation: 0,
                                  fixedSize: Size.fromHeight(expectSize(50)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(expectSize(10)),
                                    ),
                                  ),
                                ),
                                onPressed: onConfirmTap,
                                child: FittedBox(
                                  child: Text(
                                    confirmText,
                                    style: AppThemeData.regular_15,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: AppThemeData.darkGrey,
                                  fixedSize: Size.fromHeight(expectSize(50)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight:
                                          Radius.circular(expectSize(10)),
                                    ),
                                  ),
                                ),
                                onPressed: () => context.pop(false),
                                child: FittedBox(
                                  child: Text(
                                    cancelText,
                                    style: AppThemeData.regular_15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<T?> customProgress<T>({
    bool canPop = true,
    Future<T>? progress,
  }) async {
    final result = await showDialog<T>(
      context: navigatorKey.currentContext!,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        if (progress != null) {
          progress.then(
            (value) {
              context.pop(value);
            },
          );
        }
        return WillPopScope(
          onWillPop: () => Future.value(canPop),
          child: const Material(
            color: Colors.transparent,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
    return result;
  }
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
