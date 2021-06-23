import 'package:flutter/material.dart';

class brokoli extends StatefulWidget {
  @override
  _brokoliState createState() => _brokoliState();
}

class _brokoliState extends State<brokoli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BROKOLİ",
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
                              "https://i.sozcu.com.tr/wp-content/uploads/2019/06/18/iecrop/shutterstock_427442281_16_9_1560835892-880x495.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 8. Aydan sonra bebeklere verilmesi uygun olan brokoli, BLW yönteminin de vazgeçilmezleri arasında yer almaktadır. "
                                "A, B1, C ve E vitamini içerir. Kalsiyum içerir. Bağışıklık sistemnini güçlendirir. Demir eksikliğini giderir."
                                " D vitamini deposudur. Gözlere faydalıdır. Yüksek lif kaynagıdır. ",
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
