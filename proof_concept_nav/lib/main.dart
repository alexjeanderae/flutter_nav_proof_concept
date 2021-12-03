import 'package:flutter/material.dart';
import 'package:proof_concept_nav/map_utils.dart';
import 'package:proof_concept_nav/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () {
        MapUtils.openMap(latitude_to_pass, longitude_to_pass);
      },
      child: Text(
        "Open Google Maps",
        style: TextStyle(color: Colors.black),
      ),
    ))));
  }
}
