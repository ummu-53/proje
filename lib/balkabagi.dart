import 'package:flutter/material.dart';

class balkabagi extends StatefulWidget {
  @override
  _balkabagiState createState() => _balkabagiState();
}

class _balkabagiState extends State<balkabagi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BAL KABAĞI",
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
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Pumpkins_on_greengrocer.jpg/1200px-Pumpkins_on_greengrocer.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " 6. ayından itibaren bebeğinize balkabağı verebilirsiniz. A vitamini ve beta karoten yüklüdür. "
                                "Harika bir potasyum, protein ve demir kaynağıdır. Kalorisi düşük; lif oranı yüksektir. "
                                "Balkabağının çekirdeği de protein ve demir yüklüdür ancak boğulma tehlikesi dolayısıyla küçük bebeklere vermenizi tavsiye etmeyiz."
                                " Balkabağını hemen pişirmeyecekseniz, besin değerini kaybetmemesi açısından soyulmuş almak yerine kabuğu üzerinde alıp; pişireceğiniz vakit soymayı tercih edebilirsiniz.",
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
