import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Balance_tab extends StatefulWidget {
  const Balance_tab({Key? key}) : super(key: key);

  @override
  State<Balance_tab> createState() => _Balance_tabState();
}

class _Balance_tabState extends State<Balance_tab> {
  List<String> ar = ["Federal Bank", "States Bank", "Best Bank"];
  List<String> ar1 = ["1142524899652", "1142524899652", "1142524899652"];
  List<String> ar2 = ["16,456.05", "2045.05", "35873.5"];
  var c = [
    Color.fromARGB(255, 168, 29, 76),
    Color.fromARGB(255, 173, 47, 196),
    Color.fromARGB(255, 60, 175, 64)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: Icon(CupertinoIcons.circle_lefthalf_fill),
                    color: Colors.white,
                  ),
                  Text(
                    "Portfolio Value",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: (() {}),
                    icon: Icon(Icons.bar_chart),
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "\$54,375",
                    style: TextStyle(
                        color: Color.fromARGB(255, 206, 189, 189),
                        fontSize: 35),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "In 3 Accounts",
                    style: TextStyle(
                        color: Color.fromARGB(255, 206, 189, 189),
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3),
                    ),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c[index],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ar[index].toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Text(
                                ar1[index].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                ar2[index].toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // height: MediaQuery.of(context).size.height*0.2,
                      child: ElevatedButton(
                          onPressed: (() {
                            //add here
                          }),
                          child: Center(
                              child: Text(
                            "Add/Manage Accounts",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          )),
                          style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Color.fromARGB(255, 73, 71, 71),
                              // minimumSize: Size(250, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                    
                  ],
                ),
              )
            ],
          )),
    );
  }
}
