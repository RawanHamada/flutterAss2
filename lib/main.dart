import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceOriantation = MediaQuery.of(context).orientation;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer:
            deviceOriantation == Orientation.portrait ? DrawerItems() : null,
        appBar: AppBar(
          title: Text(
            'SECOND ASSINMENT',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Color.fromARGB(210, 145, 10, 255),
        ),
        body: Center(
          child: deviceOriantation == Orientation.portrait
              ? MyPaortrait()
              : MyLand(),
        ),
        // physics: NeverScrollableScrollPhysics(),
        backgroundColor: deviceOriantation == Orientation.portrait
            ? Colors.red
            : Colors.white,
      ),
    );
  }
}

class MyPaortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('');
  }
}

class MyLand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth*0.5,
          color: Colors.white,
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                SizedBox(
                  child: Text('FIRST ELEMENT'),
                  height: 30,
                ),
                SizedBox(
                  child: Text('SECOND ELEMENT'),
                  height: 30,
                ),
                SizedBox(child: Text('THIRD ELEMENT'), height: 30),
                SizedBox(child: Text('FORTH ELEMENT'), height: 30),
                SizedBox(child: Text('FIFTH ELEMENT'), height: 30),
              ],
            ),
          ),
        ],
      ),
        ),
        Container(
          width: screenWidth*0.5,
          color: Colors.red,
        )
      ],
    );
  }
}

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                SizedBox(
                  child: Text('FIRST ELEMENT'),
                  height: 30,
                ),
                SizedBox(
                  child: Text('SECOND ELEMENT'),
                  height: 30,
                ),
                SizedBox(child: Text('THIRD ELEMENT'), height: 30),
                SizedBox(child: Text('FORTH ELEMENT'), height: 30),
                SizedBox(child: Text('FIFTH ELEMENT'), height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
