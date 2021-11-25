import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InboxElements();
}

class _InboxElements extends State<InboxPage> {
  static const TextStyle tabItemStyle = TextStyle(
      fontFamily: 'Airbnb',
      fontSize: 22,
      color: Colors.black87,
      fontWeight: FontWeight.bold);

  static const TextStyle pageHeadingStyle = TextStyle(
      fontFamily: 'Airbnb',
      fontSize: 20,
      color: Colors.black87,
      fontWeight: FontWeight.bold);

  static const TextStyle notificationBodyStyle = TextStyle(
      fontFamily: 'Airbnb',
      fontSize: 18,
      color: Colors.black87,
      fontWeight: FontWeight.normal);

  static const TextStyle pageBodyStyle = TextStyle(
      fontFamily: 'Airbnb',
      fontSize: 18,
      color: Colors.black54,
      fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          appBar: const TabBar(tabs: [
            Tab(
                child: Text(
              "Messages",
              style: tabItemStyle,
            )),
            Tab(
                child: Text(
              "Notifications (1)",
              style: tabItemStyle,
            ))
          ]),
          body: Container(
              margin: EdgeInsets.all(16),
              child: TabBarView(
                children: [
                  Column(children: const [
                    Text(
                      "You have no unread messages",
                      style: pageHeadingStyle,
                    ),
                    Text(
                        "When you contact a host or send a reservation request, you'll see your messages here.",
                        style: pageBodyStyle)
                  ]),
                  Column(
                    children: const [
                      Text(
                          "Add your work email to unlock extra perks for business trips, like simplified expensing.",
                          style: notificationBodyStyle),
                      Text(
                        "November 22,2021",
                        style: pageBodyStyle,
                      )
                    ],
                  )
                ],
              ))),
    );
  }
}
