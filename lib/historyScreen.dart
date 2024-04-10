import 'package:flutter/material.dart';

class historyScreen extends StatefulWidget {
  final List<Map<String, dynamic>> data;
   historyScreen({super.key, required this.data});

  @override
  State<historyScreen> createState() => _historyScreenState();
}

class _historyScreenState extends State<historyScreen> {
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    _data = widget.data;
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
                    'History',
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
              padding:  EdgeInsets.only(top: screenHeight * 0.04),
              child: Column(
                children: [
                  Text("Recording 1",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF28283D)),),
                  SizedBox(height: screenHeight * 0.04),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('No.')),
                          DataColumn(label: Text('LATITUDE')),
                          DataColumn(label: Text('LONGITUDE')),
                          DataColumn(label: Text('TIMESTAMP')),
                        ],
                        rows: _data.take(2).map((entry) {
                          return DataRow(cells: [
                            DataCell(Text(entry['rec_no'].toString())),
                            DataCell(Text(entry['latitude'].toString())),
                            DataCell(Text(entry['longitude'].toString())),
                            DataCell(Text(entry['timestamp'].toString())),
                          ]);
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Text("Recording 2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF28283D)),),
                  SizedBox(height: screenHeight * 0.04),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('No.')),
                          DataColumn(label: Text('LATITUDE')),
                          DataColumn(label: Text('LONGITUDE')),
                          DataColumn(label: Text('TIMESTAMP')),
                        ],
                        rows: _data.take(2).map((entry) {
                          return DataRow(cells: [
                            DataCell(Text(entry['rec_no'].toString())),
                            DataCell(Text(entry['latitude'].toString())),
                            DataCell(Text(entry['longitude'].toString())),
                            DataCell(Text(entry['timestamp'].toString())),
                          ]);
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
