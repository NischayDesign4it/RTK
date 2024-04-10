import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rtk/historyScreen.dart';
import 'dart:convert';

import 'mapView.dart';

class recordingScreen extends StatefulWidget {
  const recordingScreen({super.key});

  @override
  State<recordingScreen> createState() => _recordingScreenState();
}

class _recordingScreenState extends State<recordingScreen> {
  late List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Replace 'YOUR_API_ENDPOINT' with your actual API endpoint
      final response = await http.get(Uri.parse('http://54.146.55.20:8000/data_manage_api/'));

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        setState(() {
          _data = List<Map<String, dynamic>>.from(responseData);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

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
          'Recording Module',
          style: TextStyle(fontSize: 25.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MapPage())
              );
              // Add your action here
            },
            icon: Icon(Icons.map_sharp), // Replace with the desired icon
          ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => historyScreen(data: _data))
                );
                // Add your action here
              },
              icon: Icon(Icons.history), // Replace with the desired icon
            ),
          ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text(
            //     'Map View',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xFF28283D),
            //     padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            //     textStyle: TextStyle(fontSize: 25),
            //   ),
            // ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('No.')),
                  DataColumn(label: Text('LATITUDE')),
                  DataColumn(label: Text('LONGITUDE')),
                  DataColumn(label: Text('TIMESTAMP')),
                ],
                rows: _data.map((entry) {
                  return DataRow(cells: [
                    DataCell(Text(entry['rec_no'].toString())),
                    DataCell(Text(entry['latitude'].toString())),
                    DataCell(Text(entry['longitude'].toString())),
                    DataCell(Text(entry['timestamp'].toString())),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}