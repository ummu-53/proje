import 'package:flutter/material.dart';
import 'package:ummugulsum/anasayfa.dart';
void main() {
  runApp(MaterialApp(
    title: "Ümmügülsüm uzun",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: anasayfa(),
  ));
}