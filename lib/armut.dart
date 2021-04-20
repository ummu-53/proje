import 'package:flutter/material.dart';

class armut extends StatefulWidget {
  @override
  _armutState createState() => _armutState();
}

class _armutState extends State<armut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ARMUT",
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
                              "https://iasbh.tmgrup.com.tr/762eda/812/467/0/131/560/453?u=https://isbh.tmgrup.com.tr/sbh/2018/04/30/armut-1525075700462.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. ayından sonra verilebilmektedir. Günlük vücudun ihtiyaç duyduğu C vitaminin %20’ sini karşılar."
                                " C vitamini bebeklerin bağışıklık sistemini güçlendirir. K vitamini içerdiği için bebeklerin kan pırtılaşmasında oldukça faydalıdır. "
                                "Kabız bebeklere armut verilebilmektedir. Lifli bir yapıya sahip olduğu bağırsakları çalıştırmaktadır. "
                                "Ateş düşürücü özelliği vardır. Doğal bir enerji deposudur.  ",
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