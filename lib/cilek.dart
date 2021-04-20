import 'package:flutter/material.dart';

class cilek extends StatefulWidget {
  @override
  _cilekState createState() => _cilekState();
}

class _cilekState extends State<cilek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ÇİLEK",
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
                              "https://iasbh.tmgrup.com.tr/e87cbe/812/467/0/0/590/339?u=https://isbh.tmgrup.com.tr/sbh/2018/04/30/cilek-1525075886471.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Alerjen etkisi kuvvetli bir meyvedir. Bu nedenle 1 yaş sonrası önerilmektedir. "
                                "Çilek püre olarak veya uzak parçalara bölünerek yedirilmelidir. Diş ve diş etlerine faydalıdır."
                                " Omega-3 yağ asidi içerir. Kalp dostudur. Kronik hastalıkların oluşmasını önler. İdrar sökücüdür. ",
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
