import 'package:flutter/material.dart';
import 'package:rtk/recordingScreen.dart';

class settingScreen extends StatefulWidget {
  const settingScreen({super.key});

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
            //replace with our own icon data.
          ),
          title: Stack(
            children: <Widget>[
              // Container(
              //   width: double.infinity,
              // ),

                Text(
                  'Settings',
                  style: TextStyle(fontSize: 25.0),
                ),

            ],
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          return SingleChildScrollView(
              child: Form(
                  child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.04),
                      child: Column(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Profile",
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                              indent: 20,
                              endIndent: 20,
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Terms and Privacy",
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                              indent: 20,
                              endIndent: 20,
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "FAQs",
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Divider(
                              thickness: 3,
                              color: Colors.grey,
                              indent: 20,
                              endIndent: 20,
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Logout",
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            // Divider(
                            //   thickness: 2,
                            //   color: Colors.grey,
                            //   indent: 20,
                            //   endIndent: 20,
                            // ),
                            // SizedBox(height: 10),
                          ]))));
        }));
  }
}
