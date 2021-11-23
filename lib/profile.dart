import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfileElements();
}

class _ProfileElements extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                children: [
                  Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i.imgur.com/BoN9kdC.png")))),
                  Align(
                    child:
                        Text("Nikhil", style: TextStyle(color: Colors.black87)),
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    child: Text("View profile"),
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text('Personal information'),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text('Payments and payouts'),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Notifications"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Travel for work"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("List your space"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Learn about hosting"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Manage Experiences"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("How Airbnb works"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Safety Center"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Contact Neighborhood Support"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              const Text(
                  "Let our team know about converns related to home sharing activity in your area"),
              Row(
                children: [
                  const Text("Get help"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Give us feedback"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Terms of Service"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              Row(
                children: [
                  const Text("Logout"),
                  Align(
                      child: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {
                      setState(() {});
                    },
                    alignment: Alignment.bottomRight,
                  ))
                ],
              ),
              const Center(
                child: Text("Version 21.46.1 (24004560)"),
              )
            ],
          ),
        ));
  }
}
