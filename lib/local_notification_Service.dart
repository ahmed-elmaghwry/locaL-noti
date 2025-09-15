import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  //1*
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future init() async {
    //3-
    InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );
    //2-
    flutterLocalNotificationsPlugin.initialize(settings);
  }

  // static final LocalNotificationService _notificationService =
  //     LocalNotificationService._internal();
  // factory LocalNotificationService() => _notificationService;
  // LocalNotificationService._internal();
}

///todo:1-setup
//2-basic notification
//3-Repeated notification
//4-schedule notification
//5-cancel notification
