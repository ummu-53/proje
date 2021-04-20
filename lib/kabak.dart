import 'package:flutter/material.dart';

class kabak extends StatefulWidget {
  @override
  _kabakState createState() => _kabakState();
}

class _kabakState extends State<kabak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KABAK",
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
                              "https://i2.milimaj.com/i/milliyet/75/0x0/5e5e0d0a55428216e0bc73ba.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Kabak ilk verilen ek gıdalardan biridir. Yumuşak dokusu, düşük alerjen yapısı nedeniyle "
                                "bebeklere 6. Aydan itibaren ilk verilmesi gereken besinler arasında yer alır.  A,C,E,K vitaminleri içerir.  "
                                "Magnezyum, Bakır, Demir minerallerine sahiptir.  Fosfor, sodyum ve Kalsiyum içerir.  Lifli bir gıdadır.  Kalp dostudur."
                                "  Kabız bebeklere verilebilir. Kansere karşı önleyicidir.  Kemik gelişimini destekler. Göz sağlığının korunmasında faydalıdır."
                                "  Bağışıklığı güçlendirir. ",
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
