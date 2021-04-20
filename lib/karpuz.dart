import 'package:flutter/material.dart';

class karpuz extends StatefulWidget {
  @override
  _karpuzState createState() => _karpuzState();
}

class _karpuzState extends State<karpuz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KARPUZ",
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
                              "https://i2.milimaj.com/i/milliyet/75/0x0/5ef2f405554283049c55db44.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "8. aydan itibaren verilebilmektedir. Karpuz alerjik bir yapıya sahip olduğu için bebeklerde kaşıntı yapabilmektedir."
                                " Üç gün bekleme kuralını uygulayabilirsiniz. A, B, C, B1, B2 vitaminlerini içerir. "
                                "Potasyum, Fosfor, Magnezyum, Kalsiyum, Sodyum, Demir içerir.",
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
