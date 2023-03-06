import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app/widgets.dart';

class ReceiveMoney extends StatefulWidget {
  const ReceiveMoney({Key? key}) : super(key: key);

  @override
  State<ReceiveMoney> createState() => _ReceiveMoneyState();
}

class _ReceiveMoneyState extends State<ReceiveMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  "Receive Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel_outlined),
                  iconSize: 25,
                ),
                iconColor: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/qr code.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Other Options",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.5),
                          contentPadding: EdgeInsets.only(left: 30),
                          hintText: "xyz@524899652",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.grey)),
                          prefix: Text("Your Pay ID",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Icon(Icons.copy_all_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: Colors.grey.withOpacity(0.5)),
                            onPressed: null,
                            icon: Icon(
                              Icons.arrow_right_outlined,
                              color: Colors.white,
                            ),
                            label: Text("Show bank account details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
