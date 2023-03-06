import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_app/home_tab.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/scrpic.png'),
                        fit: BoxFit.fill)),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 50),
                  child: Column(
                    children: [
                      Text(
                        "LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 1.5,
                            fontWeight: FontWeight.bold),
                      ),
                      mp,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                              hintText: "Enter Mobile Number",
                              fillColor: Colors.white,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 65),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                      Positioned(
                          top: 13,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("+92",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 7, 2, 55),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          )),
                      Positioned(
                        top: 55,
                        bottom: 40,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: FractionallySizedBox(
                            child: ElevatedButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                }),
                                child: Text(
                                  "Verify",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                    primary: Color.fromARGB(255, 7, 2, 55),
                                    minimumSize: Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                          ),
                        ),
                      ),
                      Positioned(bottom: 0, child: tt)
                    ],
                  )
                ],
              ),
              clipBehavior: Clip.none,
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          )
        ],
      ),
    );
  }
}

var mp = Stack(
  clipBehavior: Clip.none,
  alignment: Alignment.topLeft,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Image.asset('assets/images/icons.png'),
    ),
    Positioned(
        left: 100, top: 75, child: Image.asset('assets/images/phone.png')),
    Positioned(
        left: 35, top: 110, child: Image.asset('assets/images/girl.png')),
  ],
);
var tf = FractionallySizedBox(
  widthFactor: 0.8,
  child: Stack(
    clipBehavior: Clip.none,
    children: [
      TextField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            hintText: "Enter Mobile Number",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(20),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
      Text("+92")
    ],
  ),
);

butt() {
  ;
}

var tt = Center(
  child: Column(
    children: [
      Text(
        "Your personal details are safe with us",
        style: TextStyle(
          color: Color.fromARGB(255, 112, 104, 177),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          "Read our Privacy Policy and Terms and Conditions",
          style: TextStyle(
            color: Color.fromARGB(255, 112, 104, 177),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  ),
);
