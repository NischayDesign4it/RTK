import 'package:flutter/material.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}

class _notificationScreenState extends State<notificationScreen> {
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
        title: Text(
          'Notification',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.16, top: screenHeight * 0.09),
              child: Container(
                width: 300,
                height: 200,
                color: Color(0xFFD3D3D3),
                child: Stack(
                  children: [
                    // Danger icon positioned at the top left
                    Positioned(
                      top: 50,
                      left: 12,
                      child: Icon(
                        Icons.dangerous, // You can replace with your desired danger icon
                        size: 30,
                        color: Colors.red,
                      ),
                    ),

                    // Your text widget positioned below the danger icon
                    Positioned(
                      top: 52,
                      left: 50,
                      child: Text(
                        'Something went wrong!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 102,
                      left: 20,
                      child: Text(
                        'Device 1001 in hazardous zone',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Your cross sign positioned at the top left
                    Positioned(
                      top: 10,
                      left: 12,
                      child: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
