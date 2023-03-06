import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 10, right: 8),
                    child: Container(
                      //from here only initial part
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(136, 80, 78, 78)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cashbacks earned",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("\$507",
                              style: TextStyle(
                                color: Color.fromARGB(206, 255, 255, 255),
                                fontSize: 30,
                              )),
                          Text("+ 88 Rs This month",
                              style: TextStyle(
                                  color: Color.fromARGB(134, 255, 255, 255),
                                  fontSize: 18)),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              // height: MediaQuery.of(context).size.height*0.2,
                              child: ElevatedButton(
                                  onPressed: (() {
                                    //add here
                                  }),
                                  child: Center(
                                      child: Text(
                                    "View your cashback history",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                                  style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor:
                                          Color.fromARGB(255, 105, 103, 103),
                                      // minimumSize: Size(250, 40),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                            ),
                          ),
                        ],
                      ),
                    ), //till here only initial part
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Scratchcards Won",
                          style: TextStyle(
                              color: Color.fromARGB(237, 253, 247, 247),
                              fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.stream,
                              color: Colors.white,
                            ),
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(157, 92, 39, 176),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(13)),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(157, 92, 39, 176),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(13)),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(157, 92, 39, 176),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(13)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Collect Rewards",
                            style: TextStyle(
                                color: Color.fromARGB(237, 253, 247, 247),
                                fontSize: 18),
                          ),
                        ),
                        con(
                          Color.fromARGB(157, 92, 39, 176),
                          "Flat 50 off On food Delivery",
                          "On orders above 99 on swaggy, Somato",
                          MediaQuery.of(context).size.width * 0.95,
                          MediaQuery.of(context).size.width * 0.26,
                          MediaQuery.of(context).size.height * 0.05,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        con(
                          Color.fromARGB(157, 92, 39, 176),
                          "Flat 50 off On food Delivery",
                          "On orders above 99 on swaggy, Somato",
                          MediaQuery.of(context).size.width * 0.95,
                          MediaQuery.of(context).size.width * 0.26,
                          MediaQuery.of(context).size.height * 0.05,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

con(color1, String tex1, String tex2, wt, ht, wdc) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8),
    child: Container(
      width: wt,
      height: ht,
      // width: wt,
      // width: 200,
      decoration: BoxDecoration(
          color: color1,
          border: Border.all(),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/cloud.png',
                    color: Color.fromARGB(255, 145, 143, 143),
                  ),
                  Image.asset('assets/images/off1.png'),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tex1,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        tex2,
                        style: TextStyle(
                            color: Color.fromARGB(171, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: wdc,
                        child: ElevatedButton(
                            onPressed: (() {
                              //add here
                            }),
                            child: Center(
                                child: Text(
                              "Collect Now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 253, 12, 221),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor:
                                    Color.fromARGB(255, 163, 13, 126)
                                        .withOpacity(0.5),
                                // minimumSize: Size(250, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
