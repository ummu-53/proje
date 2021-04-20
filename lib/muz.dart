import 'package:flutter/material.dart';

class muz extends StatefulWidget {
  @override
  _muzState createState() => _muzState();
}

class _muzState extends State<muz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MUZ",
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
                              "https://www.cumhuriyet.com.tr/Archive/2020/12/18/1799728/kapak_175107.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. ayından itibaren verilebilmektedir. Sağlıklı kalp işlevi ve kan basıncını düzenlemede"
                                " faydalı potasyum ve lif açısından zengindir. C ve E vitaminleri içerir. Çok tüketildiğinde "
                                "kabızlık olabilmektedir. Orta boy bir muz 80 ila 100 kaloridir.",
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
