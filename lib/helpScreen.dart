import 'package:flutter/material.dart';

class helpScreen extends StatefulWidget {
  const helpScreen({super.key});

  @override
  State<helpScreen> createState() => _helpScreenState();
}

class _helpScreenState extends State<helpScreen> {
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
                  'Help and Support',
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
            padding: EdgeInsets.only(top: screenHeight * 0.09),
            child: Column(children: [
              Text("Do you want any help?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF28283D))),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.020),
                child: TextField(
                  decoration: InputDecoration(
                    // alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.020),
                child: TextFormField(
                  minLines: 6,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    labelText: 'Enter you query here....',
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              ElevatedButton(
                onPressed: () {
                  // Write a Navigation
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
                  textStyle: TextStyle(fontSize: 29),
                ),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
