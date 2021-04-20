import 'package:flutter/material.dart';

class havuc extends StatefulWidget {
  @override
  _havucState createState() => _havucState();
}

class _havucState extends State<havuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HAVUÇ ",
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
                              "https://i2.milimaj.com/i/milliyet/75/0x0/5f68b5cd55428709b417a45d.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Havuç 6. Aydan itibaren bebeklere verilebilir. İlk verilen sebzelerdendir. İçerdiği vitamin ve mineraller sayesinde bebeğinizin güzel beslenmesine yardımcı olur. "
                                "Zihin açıcı özelliği vardır. Hafızayı kuvvetlendirir. Göz için çok faydalıdır. C vitamini deposudur. "
                                "Demir eksikliğine iyi gelir. Kalsiyum kaynagıdır. Buharda pişirilmesi önerilir. ",
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
