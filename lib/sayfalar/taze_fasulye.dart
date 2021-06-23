import 'package:flutter/material.dart';

class taze_fasulye extends StatefulWidget {
  @override
  _taze_fasulyeState createState() => _taze_fasulyeState();
}

class _taze_fasulyeState extends State<taze_fasulye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TAZE FASULYE",
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
                              "https://i12.haber7.net//haber/haber7/photos/2019/50/taze_fasulyenin_faydalari_neler_1576220868_4776.jpg")
                        ],
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Taze fasulye 6.aydan sonra rahatlıkla yedirilebilecek bolca kalsiyum A vitamini,D vitamini,B12 ve C vitamini içeren bir sebze."
                                " Fakat ezilmesi, püre haline getirilmesi bebeğin yemesine uygun hale gelmesi biraz zor olabilir. "
                                "taze fasulye de karotenoidler göz sağlığına faydalıdır. Kemik gelişimine içindeki kalsiyum A ve K vitaminleri sayesinde katkı sağlar."
                                " Yeşil taze fasulye lif kaynağıdır yani prebiyotiktir. Sindirim sorunlarına iyi gelir. Folik asit kaynağıdır, hamile bayanlara birebirdir. "
                                "Akciğer hastalıkları(astım, bronşit) tedavisinde etkilidir. Bağışıklık sistemini güçlendirir. Enerji vericidir."
                                " Demir içeriğinden dolayı kansizliga iyi gelir. Kan şekerini düzenler. Vücuttaki toksinleri atmaya yardimcidir."
                                " İçerisindeki K vitamini beyin gelişimine katkı sağlar.",
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
