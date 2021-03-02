import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 10),
            child: Text(
              'Start App',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
