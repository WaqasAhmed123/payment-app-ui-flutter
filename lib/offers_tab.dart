import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List<String> h1 = [
    "Mobile Recharge Offer",
    "DTH Recharge Offer",
    "Flipcart Shopping Offer",
    "Money Transfer Offer",
    "Rs 50 Off on Flights"
  ];
  List<String> h2 = ["Use Code FIRST20", "Use Code FIRSDTHT20"];
  List<String> Tex = [
    "Get 20 % Instant casback upto Rs 50 on\nyour first mobile recharge. T&C apply",
    "Get 20 % Instant casback upto Rs 50 on\nyour first DTH recharge. T&C apply",
    "Shop on Flipcart using our payment system\nto get upto 50% cashback. T&C apply",
    "Get a scratch card with assuerd cashback and\ncoupons on Money Transfer of Rs 500 or\nmore. T&C apply.",
    "Get Instant discount on flat 50 Rs on Flight\nticket booking. T&C apply"
  ];
  var cc = [
    Color.fromARGB(255, 19, 57, 88),
    Color.fromARGB(255, 81, 1, 95),
    Color.fromARGB(255, 168, 29, 76),
    Color.fromARGB(255, 19, 57, 88),
    Color.fromARGB(255, 81, 1, 95),
  ];
  // List <String> pp = [
  //   'assets/images/off.png',
  //    'assets/images/off1.png',
  //    'assets/images/off2.png',
  //    'assets/images/off3.png',
  //    'assets/images/off3.png',

  // ];

  pic() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/cloud.png',
          color: Color.fromARGB(255, 145, 143, 143),
        ),
        Image.asset('assets/images/off1.png'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return Container(
                  decoration: BoxDecoration(
                      color: cc[index],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          pic(),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    h1[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  Text(Tex[index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14))
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ));
            }),
            separatorBuilder: ((context, index) {
              return SizedBox(
                height: 20,
              );
            }),
            itemCount: cc.length),
      ),
    );
  }
}
