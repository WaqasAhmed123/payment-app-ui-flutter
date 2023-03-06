import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app/home_tab.dart';
import 'package:payment_app/login.dart';

class Openscr extends StatelessWidget {
  const Openscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var img1 = "cloud";
    var img2 = "vector";

    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          alignment: Alignment.center,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ins,
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                        ;
                      }),
                      child: Text(
                        "INSTANT PAY",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 7, 2, 55),
                          minimumSize: Size(200, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "Your Perfect Payment Partner",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

var ins = Stack(
  children: [
    Image.asset('assets/images/cloud.png'),
    Positioned(
        top: 15, left: 20, child: Image.asset('assets/images/vector.png')),
  ],
);
but(fun) {
  return;
}
