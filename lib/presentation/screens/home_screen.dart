import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Home Screen'),
        elevation: 0,
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
