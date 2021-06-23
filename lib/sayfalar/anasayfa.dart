import 'package:flutter/material.dart';
import 'file:///C:/Users/lenovo/AndroidStudioProjects/ummugulsum/lib/sayfalar/butonlar.dart';
import 'file:///C:/Users/lenovo/AndroidStudioProjects/ummugulsum/lib/sayfalar/hakkinda.dart';
import 'package:ummugulsum/api_islemleri/listview_json.dart';
import 'package:ummugulsum/sut_grafik/arayuz.dart';
import 'package:ummugulsum/yerel_veritabani/sqlite_eklemesayfam.dart';

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
                RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlbumsView()),
                      );
                    },
                    child: Text("AYLIK BESLENME REHBERİ"),
                  ),
              ]),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                   RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VtAnasayfa()),
                      );
                    },
                    child: Text("BESİN EKLE"),

                  ),
              ]),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                   RaisedButton(
                    color: Colors.deepPurple,
                    onLongPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PieChartSample1()),
                      );
                    },
                    child: Text("BESIN GRAFIĞI"),

                  ),
              ]),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                   RaisedButton(
                    color: Colors.lightGreen,
                    onLongPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => butonlar()),
                      );
                    },
                    child: Text("GENEL BESLENME REHBERİ"),

                  ),
              ]),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    color: Colors.lightBlueAccent,
                    onLongPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkinda()),
                      );
                    },

                    child: Text("Hakkında"),

                  ),
              ]
          ),
        ],
      ),
    );
  }
}
