import 'package:flutter/material.dart';

class elma extends StatefulWidget {
  @override
  _elmaState createState() => _elmaState();
}

class _elmaState extends State<elma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ELMA",
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
                              "https://i.sozcu.com.tr/wp-content/uploads/2019/12/02/iecrop/shutterstock_292140977_16_9_1575278204-880x495.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. aydan itibaren tüketebilmektedir. Elma sınırsız tarifte kullanılabilmektedir. "
                                "A, E, BG, C ve K vitaminleri bakımından zengindir. Potasyum içerir. Sindirim oldukça kolaydır. "
                                "Bağışıklık sistemi ve dişleri kuvvetlendirir. ",
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
