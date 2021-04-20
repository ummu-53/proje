import 'package:flutter/material.dart';

class hakkinda extends StatefulWidget {
  @override
  _hakkinda createState() => _hakkinda();
}

class _hakkinda extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "HAKKINDA",
            style: TextStyle(color: Colors.black)
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006017 numaralı Ümmügülsüm Uzun tarafından 30 Nisan 2021 günü yapılmıştır.",),
        ],
      ),
    );
  }
}
