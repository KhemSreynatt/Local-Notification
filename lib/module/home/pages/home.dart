import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../config/routes.gr.dart';
import '../../../utils/helper/notification_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final remoteConfi = FirebaseRemoteConfig.instance;
  final analytics = FirebaseAnalytics.instance;
  Color color = Colors.indigo;

  getValueFromRemote() async {
    // debugPrint("is color: ${remoteConfi.getBool('is_color')}");
    if (remoteConfi.getBool('is_color')) {
      setState(() {
        color = Colors.green;
      });
    }
  }

  Future<void> _testSetCurrentScreen() async {
    await analytics.setCurrentScreen(
      screenName: 'Analytics Demo',
      screenClassOverride: 'AnalyticsDemo',
    );
    debugPrint('setCurrentScreen succeeded');
  }

  @override
  void initState() {
    getValueFromRemote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color, title: const Text("Homework Firebase")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushRoute(ProfileRoute(name: 'Sreynatt', sex: 'Femal'));
                //throw Exception();
              },
              child: const Text("Profile Page"),
            ),
            ElevatedButton(
              onPressed: () {
                // context.pushRoute(ProfileRoute(name: 'Srun Tola', sex: 'Male'));
                _testSetCurrentScreen();
                AndroidNotificationDetails androidPlatformChannelSpecifics =
                    const AndroidNotificationDetails(
                        'your channel id', 'your channel name',
                        channelDescription: 'your channel description',
                        importance: Importance.max,
                        priority: Priority.high,
                        ticker: 'ticker');
                NotificationDetails platformChannelSpecifics =
                    NotificationDetails(
                        android: androidPlatformChannelSpecifics);
                flutterLocalNotificationsPlugin.show(0, 'Z1 Flexible Solution',
                    'Flutter Developer', platformChannelSpecifics,
                    payload: 'item x');
              },
              child: const Text("Notification"),
            ),
            Image.asset("assets/png/Logo.png"),
          ],
        ),
      ),
    );
  }
}
