import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/modules/dependency_injection/injector.dart';
import 'package:my_base_code/modules/push_notification/local_notification_service.dart';

@lazySingleton
class FCMService {
  final NotificationService notificationService = getIt<NotificationService>();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final messageStream = FirebaseMessaging.onMessage;
  @factoryMethod
  static Future<FCMService> instance() async {
    final service = FCMService();
    await service.init();
    return service;
  }

  Future<void> init() async {
    await requestPermission();
    await _initPushNotifaication();
  }

  Future<void> _initPushNotifaication() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.instance.getInitialMessage().then(_onForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_onForegroundMessage);
    FirebaseMessaging.onMessage.listen(_onForegroundMessage);
  }

  Future<void> _onForegroundMessage(RemoteMessage? event) async {
    if (event == null) return;
    final map = event.notification!;

    await notificationService.showNotification(
        id: 0, title: map.title!, body: map.body!);
  }

  Future<String?> getToken() async {
    String? token;
    token = await FirebaseMessaging.instance.getToken();
    return token;
  }

  Future<void> sendTokenToServer() async {}

  Future<AuthorizationStatus> requestPermission() async {
    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
    return settings.authorizationStatus;
  }
}
