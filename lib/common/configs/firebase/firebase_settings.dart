import 'package:bookforest/common/configs/flavor/config.dart';
import 'package:bookforest/common/configs/routes/gorouter_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

class FirebaseSettings {
  static final androidNotificationChannel = AndroidNotificationChannel(
    Config.instance.bundle,
    Config.instance.appName,
    importance: Importance.max,
  );

  static String? appToken;
  static final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void registerNotification() {
    firebaseMessaging.requestPermission();

    setupInteractedMessage();

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        if (message.notification != null) {
          showNotification(message.notification!);
        }
        return;
      },
    );

    firebaseMessaging.getToken().then(
      (token) async {
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
        appToken = token;
      },
    );
  }

  static Future<String> getAppToken() async {
    if (appToken != null) {
      return appToken!;
    }
    final token = await FirebaseMessaging.instance.getToken();
    appToken = token;

    return appToken ?? '';
  }

  static void showNotification(RemoteNotification remoteNotification) async {
    await flutterLocalNotificationsPlugin.show(
      0,
      remoteNotification.title,
      remoteNotification.body,
      platformChannelSpecifics,
      payload: null,
    );
  }

  static void configLocalNotification() async {
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

  static final NotificationDetails platformChannelSpecifics =
      NotificationDetails(
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
  static Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  static void _handleMessage(RemoteMessage message) {
    debugPrint(message.data.toString());
    if (message.data['path'] != null) {
      navigatorKey.currentContext!.go(message.data['path']);
    }
  }
}
