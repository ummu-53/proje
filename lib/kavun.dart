import 'package:flutter/material.dart';

class kavun extends StatefulWidget {
  @override
  _kavunState createState() => _kavunState();
}

class _kavunState extends State<kavun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KAVUN",
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
                              "https://i2.milimaj.com/i/milliyet/75/0x0/5c8c880007291c1d74fe0c55.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 8. aydan itibaren verilebilmektedir. Bebeklerin en sevdiği meyvelerdendir. Bunun sebebi kıvamlı ve tatlı bir aromaya sahip olmasıdır."
                                "Kavunun %90’ı sudan oluşmaktadır. Kalsiyum açısından zengindir. Güçlü bir kemik yapısı sağlamaktadır. Metabolizmayı güçlendirir."
                                "Vücuda direnç verir. Gözler için bire birdir. İçerisinde Çinko, Magnezyum, Fosfor, Potasyum ve b vitaminleri barındıran bir hazinedir.",
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
