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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('SECOND ASSINMENT'),
          backgroundColor: Color.fromARGB(210, 145, 10, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(child: Text('FIRST ELEMENT'),height: 30,),
              SizedBox(child: Text('SECOND ELEMENT'),height: 30,),
              SizedBox(child: Text('THIRD ELEMENT'),height: 30),
              SizedBox(child: Text('FORTH ELEMENT'),height: 30),
              SizedBox(child: Text('FIFTH ELEMENT'),height: 30),
            ],
          ),
        ),
          // physics: NeverScrollableScrollPhysics(),
         backgroundColor: Color.fromARGB(210, 192, 4, 4),
      ),
    );
  }
}




