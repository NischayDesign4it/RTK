import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

class alarmScreen extends StatefulWidget {
  const alarmScreen({super.key});

  @override
  State<alarmScreen> createState() => _alarmScreenState();
}

class _alarmScreenState extends State<alarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          //replace with our own icon data.
        ),
        title: Stack(
          children: <Widget>[
            // Container(
            //   width: double.infinity,
            // ),
            Text(
              'Proximity Alarm',
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.1),
                child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/alarm.png'),
                ),
              ),
              SizedBox(height: screenHeight * 0.09),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.1),
                child: ActionSlider.standard(
                  sliderBehavior: SliderBehavior.stretch,
                  width: 300.0,
                  backgroundColor: Colors.white,
                  toggleColor: Colors.lightGreenAccent,
                  action: (controller) async {
                    controller.loading(); //starts loading animation
                    await Future.delayed(Duration(seconds: 3));
                    controller.success(); //starts success animation
                    await Future.delayed(Duration(seconds: 1));
                    controller.reset(); //resets the slider
                  },
                  child: Text('Snooze'),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.1),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => otpScreen())
                    // );
                  },
                  child: Text(
                    'Add Snooze Time',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF28283D),
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.15),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
