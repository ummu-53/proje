import 'package:flutter/material.dart';

class karnabahar extends StatefulWidget {
  @override
  _karnabaharState createState() => _karnabaharState();
}

class _karnabaharState extends State<karnabahar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KARNABAHAR",
            style: TextStyle(color: Colors.black),),
        ),

        body: Column(children: <Widget>[
          IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                              "https://iasbh.tmgrup.com.tr/8da0ce/650/344/0/0/640/336?u=https://isbh.tmgrup.com.tr/sbh/2019/10/02/karnabaharin-faydalari-nelerdir-1569966687947.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "8. Aydan itibaren bebek yemeklerinde yer almaya başlayan karnabahar oldukça zengin vitamin ve minerallere sahiptir."
                                "Bakıldığı zaman karnabaharın büyük çoğunluğunun sudan oluştuğu görülmektedir."
                                "C ve K vitamini bakımından zengindir. Lifli bir sebzedir. Sindirim sistemine faydalıdır. Kalsiyum deposudur."
                                "Dişlere faydalıdır. Kemik gelişimini destekler. Beyin gelişimini destekler. ",
                          ),
                        ]
                    ),
                  ]

              )

          )

        ])
    );
  }
}
