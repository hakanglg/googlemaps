import 'package:flutter/material.dart';
import 'package:googlemaps/simple_map.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps Sample',
      home: SimpleMap(),
    );
  }
}
