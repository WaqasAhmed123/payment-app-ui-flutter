import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app/notification.dart';
import 'package:payment_app/openscr.dart';
import 'package:payment_app/widgets.dart';
// import 'package:flutter_xlider/flutter_xlider.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Icon> ic = [
    Icon(
      Icons.receipt,
      color: Colors.white,
    ),
    Icon(Icons.add_alert_outlined, color: Colors.white),
    Icon(Icons.lock_clock, color: Colors.white),
    Icon(CupertinoIcons.exclamationmark, color: Colors.white),
    Icon(Icons.monitor_heart_outlined, color: Colors.white),
  ];
  List<String> sub = [
    "All Transactions",
    "Pending transactions",
    "Refund Status",
    "Raise an issue",
    "Help and Support",
  ];
  RangeValues values = RangeValues(0, 100);
  List<Icon> icsecondlist = [
    Icon(
      CupertinoIcons.exclamationmark_circle,
      color: Colors.white,
    ),
    Icon(CupertinoIcons.arrow_clockwise_circle, color: Colors.white),
    Icon(CupertinoIcons.exclamationmark, color: Colors.white),
  ];
  List<String> subsecondlist = [
    "Abous Us",
    "Terms and Conditions",
    "Feedback",
  ];

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black.withOpacity(0),
                  child: Column(
                    children: [
                      ListTile(
                        
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage('assets/images/avator top.png'),
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Elsa",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.ac_unit,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Level 4 Ace Member",
                                  style: TextStyle(
                                    color: Color.fromARGB(204, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RangeSlider(
                                  divisions: 100,
                                  labels: labels,
                                  values: values,
                                  activeColor: Color.fromARGB(255, 38, 36, 153),
                                  inactiveColor: Colors.white,
                                  max: 100,
                                  min: 0,
                                  onChanged: (newvalue) {
                                    values = newvalue;
                                    setState(() {});
                                  },
                                ),
                                textp1("Lv5")
                              ],
                            ),
                          ],
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: notb(),
                        ),
                      ),
                      // till here its initial part
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                textp("1,208"),
                                textp1("Transactions")
                              ],
                            ),
                            vd(),
                            Column(
                              children: [textp("726"), textp1("Points")],
                            ),
                            vd(),
                            Column(
                              children: [textp("8"), textp1("Rank")],
                            ),
                            // Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                eb("Explore",
                                    CupertinoIcons.arrow_right_circle_fill),
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          eb("Edit Profile", CupertinoIcons.profile_circled),
                          eb("Settings", Icons.settings),
                          eb("Share", Icons.share),
                        ],
                      ) //till here second row/part
                    ],
                  ),
                ),
              ), //tille here compete first container/part

              Expanded(
                flex: 4,
                child: Container(
                  child: ListView.builder(
                      itemCount: sub.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ic[index],
                          title: Text(
                            sub[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.join_right_sharp,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                ),
              ), //till here second container

              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black,
                  child: ListView.builder(
                    itemCount: subsecondlist.length,
                    itemBuilder: ((context, index) {
                    return ListTile(
                      leading: icsecondlist[index],
                      title: Text(subsecondlist[index],style: TextStyle(color: Colors.white),),
                      trailing: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.join_right_sharp,
                              color: Colors.white,
                            ),
                          ),                    );
                  })),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
