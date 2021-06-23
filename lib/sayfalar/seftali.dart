import 'package:flutter/material.dart';
class seftali extends StatefulWidget {
  @override
  _seftaliState createState() => _seftaliState();
}

class _seftaliState extends State<seftali> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ŞEFTALİ",
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
                              "https://im.haberturk.com/2018/09/19/ver1537777998/2148592_810x458.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. aydan sonra verilebilmektedir. A ve C vitamini, beta karoten ve potasyum kaynağı olan şeftali lif bakımından da zengin bir meyve."
                                " Bu nedenle eğer kabızlık sorunu varsa bebeğinize şeftali verebilirsiniz. Tatlı, sulu ve lezzetli olan şeftali "
                                "bebekler için ideal ilk yiyeceklerden biridir. ",
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
