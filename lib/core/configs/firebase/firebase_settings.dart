import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/routes/gorouter_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

class FcmSettings {
  static late final FcmSettings instance;

  final VoidCallback? onMessageListen;

  FcmSettings.initialize({this.onMessageListen}) {
    instance = FcmSettings._internal(onMessageListen: onMessageListen);
  }

  FcmSettings._internal({this.onMessageListen}) {
    registerNotification(onMessageListen);
    configLocalNotification();
  }

  final androidNotificationChannel = AndroidNotificationChannel(
    Config.instance.bundle,
    Config.instance.appName,
    importance: Importance.max,
  );

  String? _appToken;
  String get pushToken => _appToken ?? '';

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void registerNotification(VoidCallback? onMessageListen) async {
    FirebaseMessaging.instance.requestPermission();

    setupInteractedMessage();

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        if (message.notification != null) {
          if (onMessageListen != null) {
            onMessageListen();
          }
          showNotification(message.notification!);
        }
        return;
      },
    );

    await Future.delayed(const Duration(milliseconds: 500));

    FirebaseMessaging.instance.getToken().then(
      (token) async {
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
        _appToken = token;
      },
    );
  }

  void showNotification(RemoteNotification remoteNotification) async {
    await flutterLocalNotificationsPlugin.show(
      0,
      remoteNotification.title,
      remoteNotification.body,
      platformChannelSpecifics,
      payload: null,
    );
  }

  void configLocalNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/launcher_icon');
    DarwinInitializationSettings initializationSettingsIOS =
        const DarwinInitializationSettings();
    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidNotificationChannel);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  final NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: AndroidNotificationDetails(
      Config.instance.bundle,
      Config.instance.appName,
      channelDescription: '책숲 알림',
      playSound: true,
      enableVibration: true,
      icon: null,
      importance: Importance.max,
      priority: Priority.high,
    ),
    iOS: const DarwinNotificationDetails(),
  );

  // 푸시알림 클릭시 앱 내부 path로 연결 설정
  Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    debugPrint(message.data.toString());
    if (message.data['path'] != null) {
      navigatorKey.currentContext!.go(message.data['path']);
    }
  }
}
