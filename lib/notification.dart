import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> items = [
    "Notification1",
    "Notification2 ",
    "Notification3 ",
    "Notification4"
  ];
  String? selecteditem = "Notification1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            ListTile(
              subtitle: Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
              iconColor: Colors.white,
            ),
            ListTile(
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recharge Completed",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Your last recharge on 9847229989 of 199 RS has been\nsuccesfully completed\n\nMay 20 - 12:32 PM ",
                      style: TextStyle(
                          color: Color.fromARGB(
                            197,
                            255,
                            255,
                            255,
                          ),
                          fontSize: 12),
                    ),
                  ],
                ),
                trailing: notb()),
            ListTile(
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recharge Completed",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Your last recharge on 9847229989 of 199 RS has been\nsuccesfully completed\n\nMay 20 - 12:32 PM ",
                      style: TextStyle(
                          color: Color.fromARGB(
                            197,
                            255,
                            255,
                            255,
                          ),
                          fontSize: 12),
                    ),
                  ],
                ),
                trailing: notb()),
            ListTile(
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recharge Completed",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Your last recharge on 9847229989 of 199 RS has been\nsuccesfully completed\n\nMay 20 - 12:32 PM ",
                      style: TextStyle(
                          color: Color.fromARGB(
                            197,
                            255,
                            255,
                            255,
                          ),
                          fontSize: 12),
                    ),
                  ],
                ),
                trailing: notb()),
            ListTile(
                subtitle: Text(
                  "Recent Notifications ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                trailing: DropdownButton<String>(
                  dropdownColor: Colors.white,
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      value = value;
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }
}

tri() {
  return Stack(
    children: [
      CircleAvatar(radius: 20, backgroundColor: Colors.grey),
      Positioned(
        left: 5,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
          iconSize: 35,
          color: Colors.white,
        ),
      ),
      Positioned(
          top: 10,
          left: 30,
          child: Icon(
            Icons.brightness_1,
            size: 12,
            color: Color.fromARGB(255, 4, 21, 154),
          ))
    ],
  );
}

notb() {
  return IconButton(
    onPressed: () {},
    icon: Icon(Icons.circle_notifications),
    color: Colors.grey,
    iconSize: 30,
  );
}
