import 'package:flutter/material.dart';
import 'package:rtk/loginpage.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
                'Create an account',
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
            child: Center(
          child: Container(
            width: screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: screenHeight * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.0,
                            horizontal: screenWidth * 0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.person),
                            contentPadding:
                                EdgeInsets.only(top: 12, bottom: 12),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.0,
                            horizontal: screenWidth * 0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.email),
                            contentPadding:
                                EdgeInsets.only(top: 12, bottom: 12),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.0,
                            horizontal: screenWidth * 0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: "Company Name",
                            labelStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.person),
                            contentPadding:
                                EdgeInsets.only(top: 12, bottom: 12),
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
                          // This makes the password field secure
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.lock),
                            contentPadding:
                                EdgeInsets.only(top: 12, bottom: 12),
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.0,
                            horizontal: screenWidth * 0.0),
                        child: TextField(
                          obscureText: passwordVisible,
                          // This makes the password field secure
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: "Confirmed Password",
                            labelStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.lock),
                            contentPadding:
                                EdgeInsets.only(top: 12, bottom: 12),
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
                      ElevatedButton(
                        onPressed: () {
                          // Write a Navigation
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF28283D),
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.35),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        },
                        child: Text(
                          "Already have an Account? Login",
                          style: TextStyle(
                              color: Color(0xFF28283D),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
      }),
    );
  }
}
