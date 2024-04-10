import 'package:flutter/material.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
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
          )
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.0),
                child: Center(
                  child: SizedBox(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.2,
                      child: Image.asset('assets/images/otp.png')),
                ),
              ),
              SizedBox(height: screenHeight * 0.09),
              Center(
                  child: Text("Verification",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF28283D)))),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding:  EdgeInsets.only(left: screenWidth * 0.09),
                child: Text.rich(
                  TextSpan(
                    text: 'We will send you a ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF28283D)),
                    children: [
                      TextSpan(
                        text: 'One-Time Password',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF28283D)),
                      ),
                      TextSpan(
                        text: ' on your Phone',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF28283D)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.0,
                    horizontal: screenWidth * 0.03),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => otpScreen())
                  // );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF28283D),
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.01,
                      horizontal: screenWidth * 0.35),
                  textStyle: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
