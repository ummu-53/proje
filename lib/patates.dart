import 'package:flutter/material.dart';

class patates extends StatefulWidget {
  @override
  _patatesState createState() => _patatesState();
}

class _patatesState extends State<patates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PATATES",
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
                              "https://www.gidanotlari.com/wp-content/uploads/2021/02/812x467-patates-1525074409416.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. ayından itibaren bebeğinize balkabağı verebilirsiniz. Patates alerji oranı en düşük sebze olduğu için ilk verilen ek gıdalar arasında yer almaktadır."
                                " Patates sadece bebek mutfağında değil dünyada da oldukça tüketilmektedir. Hatta en çok tüketilen 4. Besin olma özelliğine sahiptir."
                                "  A,C,E, K ve B6 vitaminlerini içermektedir. Potasyum açısından zengindir.  İçerisinde kalsiyum, magnezyum, "
                                "demir ve bakır mineralleri de bulunmaktadır. Sindirimi yormaz aksine sindirime faydalıdır. Enerji kaynağıdır."
                                " Alerjen riski oldukça düşüktür. Karbonhidrat ve protein açısından zengindir. İshal bebeklere kullanılır.",
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
