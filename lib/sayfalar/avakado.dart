import 'package:flutter/material.dart';

class avakado extends StatefulWidget {
  @override
  _avakadoState createState() => _avakadoState();
}

class _avakadoState extends State<avakado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AVAKADO",
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
                              "https://www.gundemkibris.com/images/haberler/2017/12/avakado-yiyen-yaslanmiyor_9cf9c.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 4. aydan itibaren verilebilmektedir. Bebeklerin gelişimi için büyük bir rol oynar. "
                                "Demir eksikliğini giderir. Beyin gelişimini destekler. Fiziksel gelişimi destekler. "
                                "Antioksidan özelliği ile hücreleri yeniler. Gözlere oldukça faydalıdır. Kalp dostudur. "
                                "Anne sütüne en yakın meyvedir. Yağlı bir meyvedir. Sindirim sistemine faydalıdır. ",
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
