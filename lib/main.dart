import 'package:flutter/material.dart';

import 'local_notification_Service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotificationService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter notification'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                LocalNotificationService.showBasicNotification();
              },
              leading: Icon(Icons.notifications),
              title: Text('basic notification'),
              trailing: IconButton(
                onPressed: () {
                  LocalNotificationService.cancelNotification(id: 0);
                },
                icon: Icon(Icons.cancel, color: Colors.red),
              ),
            ),
            ListTile(
              onTap: () {
                LocalNotificationService.showRepeatedNotification();
              },
              leading: Icon(Icons.notifications),
              title: Text('repeated notification'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
