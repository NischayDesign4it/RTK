import 'package:flutter/material.dart';
import 'package:rtk/dashboard.dart';

import 'otpScreen.dart';
import 'signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Stack(
      //     children: <Widget>[
      //       Container(
      //         width: double.infinity,
      //       ),
      //
      //     ],
      //   ),
      // ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.4,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Container(
                width: screenWidth * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.0,
                          horizontal: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.0,
                          horizontal: screenWidth * 0.0),
                      child: TextField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(Icons.lock),
                          contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                          alignLabelWithHint: false,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => otpScreen()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => dashboardScreen())
                        );
                      },
                      child: Text(
                        'Login',
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
                    SizedBox(height: screenHeight * 0.02),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signupScreen()));
                      },
                      child: Text("Don't have an Account? SignUp",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
