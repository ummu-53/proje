import 'package:flutter/material.dart';
import 'file:///C:/Users/lenovo/AndroidStudioProjects/ummugulsum/lib/sayfalar/anasayfa.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ummugulsum/giris/auth_type_selector.dart';
import 'package:ummugulsum/sayfalar/anasayfa.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    title: "Ümmügülsüm uzun",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: AuthTypeSelector(),
  ));
}