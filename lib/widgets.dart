import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

eb(String t, Ico) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: (ElevatedButton.icon(
      
      onPressed: null,
      icon: Icon(
        Ico,
        color: Colors.white,
      ),
      label: Text(
        t,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
      // fixedSize: Size(120, 40),
        // primary: Colors.white,
        onSurface: Colors.white
        //elevated btton background color
      ),
    )),
  );
}

vd() {
  return VerticalDivider(
    
    // width: 5,
    // thickness: 2,
    color: Color.fromARGB(188, 255, 255, 255),
  );
}

textp(String t1) {
  return Text(
    t1,
    style: TextStyle(color: Color.fromARGB(255, 6, 122, 216), fontSize: 20),
  );
}

textp1(String t2) {
  return Text(
    t2,
    style: TextStyle(color: Color.fromARGB(186, 255, 255, 255)),
  );
}
