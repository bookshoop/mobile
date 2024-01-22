import 'dart:developer';
import 'dart:io';

import 'package:bookforest/common/presentation/widgets/dialog/dialog_manager.dart';
import 'package:bookforest/common/configs/routes/gorouter_provider.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

class CustomInterceptor extends Interceptor {
  final timeFormat = DateFormat('HH:mm:ss.SS');
  final Ref ref;
  String sessionId = '';
  BuildContext? context;
  final logger = Logger(
    printer: SimplePrinter(colors: false),
  );

  CustomInterceptor({
    required this.ref,
    this.context,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    context = navigatorKey.currentContext!;
    if (options.headers['showProgress'] == 'true') {
      DialogManager.customProgress(canPop: false);
    }
    logger.d(
        "[REQ] [${options.method}] [${timeFormat.format(DateTime.now())}] ${options.uri}");
    log("[REQ] [DATA] : ${options.data.toString()}");
    if (options.data.runtimeType == FormData) {
      // logger.d("[REQ] [DATA] : ${(options.data as FormData).fields}");
      log("[REQ] [DATA] : ${(options.data as FormData).fields}");
    }
    if (sessionId.isNotEmpty) {
      options.headers.addAll({'Cookie': sessionId});
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // set cookie
    setCookie(response);
    logger.d(
        '[RES] [${response.requestOptions.method}] [${timeFormat.format(DateTime.now())}] ${response.requestOptions.uri}');
    // logger.d("[RES] [DATA] : ${response.data.toString()}");
    log("[RES] [DATA] : ${response.data.toString()}");
    if (response.requestOptions.headers['showProgress'] == 'true') {
      context?.pop();
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
        '[ERR] [${err.requestOptions.method}] [${timeFormat.format(DateTime.now())}] ${err.requestOptions.uri}');
    log(err.response.toString());
    log(err.type.toString());

    if (err.requestOptions.headers['showProgress'] == 'true') {
      navigatorKey.currentContext!.pop();
    }

    // 요청 보낼 때 context와 에러 리턴 시 context가 같은 지
    // 다를 경우 페이지가 바꼈기 때문에 dialog 표시 안함
    final isPageChanged = context != navigatorKey.currentContext!;
    final showDialog = err.requestOptions.headers['showDialog'] != 'false';

    if (!isPageChanged && !DialogManager.isDialogOn && showDialog) {
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.sendTimeout:
          DialogManager.customAlertDialog(
            title: '연결실패',
            content: Text(
              '서버에 연결할 수 없습니다.\n다시 시도해 주세요.',
              style: AppThemeData.regular_15,
              textAlign: TextAlign.center,
            ),
          );
          break;
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.cancel:
          DialogManager.customAlertDialog(
            title: '연결실패',
            content: Text(
              '요청이 취소되었습니다.\n다시 시도해 주세요.',
              style: AppThemeData.regular_15,
              textAlign: TextAlign.center,
            ),
          );
          break;
        case DioExceptionType.badResponse:
          DialogManager.customAlertDialog(
            title: '요청실패',
            content: Text(
              '요청 처리 중 서버에 문제가 발생했습니다.\n다시 시도해 주세요.',
              style: AppThemeData.regular_15,
              textAlign: TextAlign.center,
            ),
          );
          break;
        default:
          // final exception = ExceptionModel.fromJson(err.response?.data);
          DialogManager.customAlertDialog(
            title: '요청실패',
            content: Text(
              // exception.message,
              '',
              style: AppThemeData.regular_15,
              textAlign: TextAlign.center,
            ),
          );
      }
    }
    return handler.reject(err);
  }

  void setCookie(Response response) {
    // if (response.requestOptions.path == '/login' ||
    //     response.requestOptions.path == '$host/api/v1/login') {
    response.headers.forEach(
      (name, values) {
        if (name == HttpHeaders.setCookieHeader) {
          for (var header in values) {
            sessionId = header.substring(0, header.indexOf(';'));
          }
        }
      },
    );
    // }
  }
}
