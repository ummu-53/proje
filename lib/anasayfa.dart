import 'package:flutter/material.dart';
import 'package:ummugulsum/butonlar.dart';
import 'package:ummugulsum/hakkinda.dart';

class anasayfa extends StatefulWidget {
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "BEBEK BESLENME REHBERİ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                              "https://i.pinimg.com/736x/d3/a6/b2/d3a6b29acdc6cc6567bae4605e6d5d8f.jpg")
                        ],
                      ),
                    ),
                  ])),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => butonlar()),
                    );
                  },
                  child: Icon(Icons.login),
                  backgroundColor: Colors.lightGreen,
                ),
              ]),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => hakkinda()),
                    );
                  },

                  child: Icon(Icons.text_snippet),
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ]
          ),
        ],
      ),
    );
  }
}
