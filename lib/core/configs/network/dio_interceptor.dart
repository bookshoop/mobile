import 'dart:developer';
import 'dart:io';

import 'package:bookforest/core/configs/routes/gorouter_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

class CustomInterceptor extends Interceptor {
  final timeFormat = DateFormat('HH:mm:ss.SS');
  final Ref ref;
  String sessionId = '';
  final logger = Logger(
    printer: SimplePrinter(colors: false),
  );

  CustomInterceptor({
    required this.ref,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.d(
        "[REQ] [${options.method}] [${timeFormat.format(DateTime.now())}] ${options.uri}");
    if (options.data.runtimeType == FormData) {
      log("[REQ] [DATA] : ${(options.data as FormData).fields}");
    } else {
      log("[REQ] [DATA] : ${options.data.toString()}");
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
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
        '[ERR] [${err.requestOptions.method}] [${timeFormat.format(DateTime.now())}] ${err.requestOptions.uri}');
    log(err.response.toString());
    log(err.type.toString());

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
