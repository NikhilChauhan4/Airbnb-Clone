import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfileElements();
}

class _ProfileElements extends State<ProfilePage> {
  static const TextStyle menuItemsStyle =
      TextStyle(fontFamily: 'Airbnb', fontSize: 23, color: Colors.black87);

  static const TextStyle menuItemsStyleSmall =
      TextStyle(fontFamily: 'Airbnb', fontSize: 18, color: Colors.black54);

  static const TextStyle menuHeadingStyle =
      TextStyle(fontFamily: 'Airbnb', fontSize: 16, color: Colors.black54);

  static const Divider menuItemsDivider = Divider(height: 20, thickness: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                children: [
                  Container(
                      width: 120.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 8, top: 16, bottom: 16),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i.imgur.com/BoN9kdC.png")))),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nikhil",
                            style: TextStyle(
                                fontFamily: 'Airbnb',
                                fontSize: 24,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("View profile",
                            style: TextStyle(
                                fontFamily: 'Airbnb',
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.normal)),
                      ]),
                ],
              ),
              menuItemsDivider,
              Container(
                  margin: const EdgeInsets.only(bottom: 32,left: 8,right: 8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Earn money from your extra space"),
                        Text("Learn more",
                            style: TextStyle(
                                fontFamily: 'Airbnb',
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.normal)),
                      ])),
              menuItemsDivider,
              Align(
                  child: Text("ACCOUNT SETTINGS", style: menuHeadingStyle),
                  alignment: Alignment.topLeft),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    child: Text('Personal information', style: menuItemsStyle),
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Payments and payouts', style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.payments_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notifications", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.notifications_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Travel for work", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Align(
                child: Text('HOSTING', style: menuHeadingStyle),
                alignment: Alignment.topLeft,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("List your space", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.house_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Learn about hosting", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.house_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Manage Experiences", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Align(
                child: Text('SUPPORT', style: menuHeadingStyle),
                alignment: Alignment.topLeft,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("How Airbnb works", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Safety Center", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon:
                        const Icon(Icons.health_and_safety_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              const Text(
                  "Get the support, tools, and information you need to be safe",
                  style: menuItemsStyleSmall),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Contact Neighborhood Support",
                      style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              const Text(
                  "Let our team know about converns related to home sharing activity in your area",
                  style: menuItemsStyleSmall),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Get help", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Give us feedback", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.feedback_outlined, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Align(
                child: Text('LEGAL', style: menuHeadingStyle),
                alignment: Alignment.topLeft,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Terms of Service", style: menuItemsStyle),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              menuItemsDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [const Text("Logout", style: menuItemsStyle)],
              ),
              menuItemsDivider,
              const Center(
                child: Text("Version 21.46.1 (24004560)",
                    style: menuItemsStyleSmall),
              )
            ],
          ),
        ));
  }
}
