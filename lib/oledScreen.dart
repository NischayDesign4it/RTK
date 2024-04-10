import 'package:flutter/material.dart';

class oledScreen extends StatefulWidget {
  const oledScreen({super.key});

  @override
  State<oledScreen> createState() => _oledScreenState();
}

class _oledScreenState extends State<oledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Stack(
            children: <Widget>[
              // Container(
              //   width: double.infinity,
              // ),

              Text(
                'OLED Controls',
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
              child: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.04, left: screenWidth * 0.09),
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          color: Color(0xFFD3D3D3),
                          child: Stack(children: [
                            // Danger icon positioned at the top left
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Text(
                                "Latitude"
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 12,
                              child: Text(
                                  "2° 89' E"
                              ),
                            ),

                            // Your text widget positioned below the danger icon

                          ]
                          )
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Container(
                          width: 100,
                          height: 100,
                          color: Color(0xFFD3D3D3),
                          child: Stack(children: [
                            // Danger icon positioned at the top left
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Text(
                                  "Longitude"
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 12,
                              child: Text(
                                  "2° 12' E"
                              ),
                            ),

                            // Your text widget positioned below the danger icon

                          ]
                          )
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Container(
                          width: 100,
                          height: 100,
                          color: Color(0xFFD3D3D3),
                          child: Stack(children: [
                            // Danger icon positioned at the top left
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Text(
                                  "Timestamp"
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 10,
                              child: Text(
                                  "2023‐09‐25 17:45:30.005"
                              ),
                            ),

                            // Your text widget positioned below the danger icon

                          ]
                          )
                      )
                    ],
                  ),

              ));
        }));
  }
}
