import 'package:flutter/material.dart';

class enginar extends StatefulWidget {
  @override
  _enginarState createState() => _enginarState();
}

class _enginarState extends State<enginar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ENGİNAR",
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
                              "https://i12.haber7.net//haber/haber7/photos/2019/43/enginarin_faydalari_nelerdir_enginar_hangi_hastaliklara_iyi_gelir_1571751160_246.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 8. aydan sonra bebeklere verilmesi uygundur.  Enginar içinde bol miktarda potasyum, kalsiyum, "
                                "fosfor, K vitamini ve manganez var. A vitaminden, B1 ve C vitaminden de çok zengin. En büyük özellliği ise karaciğeri temizlemesi. "
                                "Folat, Kalsiyum, Demir, Magnezyum, Fosfor, Potasyum, Sodyum, Manganez, Selenyum içermektedir. ",
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
