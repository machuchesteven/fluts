import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  triggerNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 1,
      channelKey: "basic_channel",
      title: "New Day Notification",
      body: "You have a new day to plan! Go Ahead",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          const Text(
            'HomepageTHIS',
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: triggerNotification, child: const Text('Be Notified')),
        ],
      ),
    ));
  }
}
