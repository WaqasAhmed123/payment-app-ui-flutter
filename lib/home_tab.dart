import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app/ReceiveMon.dart';
import 'package:payment_app/balance_tab.dart';
import 'package:payment_app/offers_tab.dart';
import 'package:payment_app/profile.dart';
import 'package:payment_app/notification.dart';
import 'package:payment_app/rewards_tab.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leadingWidth: 70,
              leading: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: InkWell(
                  onTap: () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Profile()),
  );
                  },
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/images/avator top.png'),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () {
                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Notifications()),
  );
                    },
                    child: Stack(
                      children: [
                        CircleAvatar(radius: 28, backgroundColor: Colors.grey),
                        Center(
                          child: Positioned(
                            left: 5,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications),
                              iconSize: 35,
                              color: Colors.white,
                            ),
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
                    ),
                  ),
                )
              ],
              title: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                      contentPadding: EdgeInsets.only(left: 50),
                      hintText: "Search Users,ID's etc",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey)),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              backgroundColor: Colors.black,
              bottom: TabBar(tabs: [
                Text('Home'),
                Text('Balance'),
                Text('Offers'),
                Text('Rewards'),
              ]),
            ),
            body: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Money Transfer",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          ElevatedButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.swipe_right,
                                color: Colors.grey.withOpacity(0.5), size: 24),
                            label: Text("More"),
                            onLongPress: null,
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.grey.withOpacity(0.5))),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.crop_free,
                                  color: Colors.white,
                                  shadows: [],
                                ),
                                label: Text(
                                  "Scan QR Code",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.purple.withOpacity(0.5)))),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: ElevatedButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.person_add_alt,
                                  color: Colors.white,
                                  shadows: [],
                                ),
                                label: Text(
                                  "Send to Contact",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(255, 142, 211, 145)
                                            .withOpacity(0.5)))),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: but(Colors.yellow, "Send To Bank")),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(child: but(Colors.pink, "Self Transfer"))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Recharge & Bill Payments",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          heading()
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: but(Colors.green, "Mobile Recharge")),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: but(Color.fromARGB(255, 199, 76, 117),
                                  "Electricity Bill"))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: but(Colors.brown, "DTH Recharge")),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: but(Color.fromARGB(255, 121, 42, 195),
                                  "Postpaid Bill"))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "ticket Booking",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              tbook(Icons.play_circle_sharp),
                              Text(
                                "movies",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(children: [
                            tbook(Icons.train_outlined),
                            Text(
                              "movies",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                          Column(
                            children: [
                              tbook(Icons.directions_bus_outlined),
                              Text(
                                "movies",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              tbook(Icons.airplanemode_on_outlined),
                              Text(
                                "movies",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              tbook(Icons.sd_card_outlined),
                              Text(
                                "movies",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "More Services",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                tbook(Icons.graphic_eq_sharp),
                                Text(
                                  "Invest",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                tbook(Icons.circle),
                                Text(
                                  "Loans",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(children: [
                              tbook(Icons.heart_broken),
                              Text(
                                "Insurance",
                                style: TextStyle(color: Colors.white),
                              ),
                            ]),
                          ),
                          Column(children: [
                            tbook(Icons.car_crash_rounded),
                            Text(
                              "Fastag",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avator b1.png'),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avator b2.png'),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avator b3.png'),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avator b4.png'),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avator b5.png'),
                                  radius: 30,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              child: Text(
                            "Recent Transactions",
                            style: TextStyle(color: Colors.white),
                          )),
                          Positioned(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color.fromARGB(255, 33, 47, 243)),
                                child: InkWell(
                                  onTap: () {
                                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ReceiveMoney()),
  );
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Receive Money',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Balance_tab(),
              Offers(),
              Rewards(),
            ]),
          )),
    );
  }
}

but(color, String tex) {
  return ElevatedButton.icon(
      onPressed: null,
      icon: Icon(
        Icons.person_add_alt,
        color: Colors.white,
        shadows: [],
      ),
      label: Text(
        tex,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)));
}

heading() {
  return ElevatedButton.icon(
    onPressed: null,
    icon:
        Icon(Icons.swipe_right, color: Colors.grey.withOpacity(0.5), size: 24),
    label: Text("More"),
    onLongPress: null,
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Colors.grey.withOpacity(0.5))),
  );
}

tbook(
  Icon0,
) {
  return Material(
    type: MaterialType.transparency,
    child: Ink(
      decoration: BoxDecoration(
        border: Border.all(width: 0),
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 23, 1, 27),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            Icon0,
            size: 28.0,
            color: Colors.pink,
          ),
        ),
      ),
    ),
  );
}
