import 'package:flutter/material.dart';
import 'package:rtk/loginpage.dart';


void main() {
  runApp(MainGPS());
}

class MainGPS extends StatelessWidget {
  const MainGPS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'GPS-RTK',


      home: loginpage(),
    );
  }
}
