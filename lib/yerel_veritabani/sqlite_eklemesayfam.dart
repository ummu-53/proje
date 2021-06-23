import 'package:flutter/material.dart';
import 'package:ummugulsum/yerel_veritabani/sqlite_isleyis.dart';
import 'package:ummugulsum/yerel_veritabani/sqlite_temel.dart';

class VtAnasayfa extends StatefulWidget {
  @override
  _VtAnasayfaState createState() => _VtAnasayfaState();
}

class _VtAnasayfaState extends State<VtAnasayfa> {
  VtYardimcisi vtYardimcisi = new VtYardimcisi();
  List<besinsqlite> besinler = new List();
  bool duzenlemi = false;
  final formKontrolcu = GlobalKey<FormState>();
  final besinkntrl = TextEditingController();
  final aykntrl = TextEditingController();

  _besinEkle() {
    vtYardimcisi
        .besinKaydet(
        new besinsqlite(besinkntrl.text, aykntrl.text))
        .then((deger) {
      debugPrint(deger.toString());
      if (deger > 0) {
        listeYenile();
        besinkntrl.clear();
        aykntrl.clear();
        Navigator.pop(context);
      }
    });
  }

  _besinSil(besinsqlite besin) {
    vtYardimcisi.besinSil(besin).then((cvp) {
      if (cvp > 0) {
        listeYenile();
      }
    });
  }

  _besinGuncelle(int bno) {
    var bsn = new besinsqlite(besinkntrl.text, aykntrl.text);
    bsn.no = bno;
    vtYardimcisi.besinGuncelle(bsn).then((cvp) {
      if (cvp) {
        debugPrint(cvp.toString());
        listeYenile();
        Navigator.pop(context);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    listeYenile();
  }

  listeYenile() {
    vtYardimcisi.besinleriGetir().then((gelen) {
      setState(() {
        besinler = gelen;
      });
      debugPrint(gelen.toString());
    });
  }

  void eklemeEkraniAc({besinsqlite besins}) {
    if (besins != null) {
      duzenlemi = true;
      besinkntrl.text = besins.besinadi;
      aykntrl.text = besins.ay;
    } else {
      duzenlemi = false;
      besinkntrl.clear();
      aykntrl.clear();
    }
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text(duzenlemi ? "besin düzenle" : "besin ekle"),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Form(
                    key: formKontrolcu,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (val) {
                            if (val.length > 0) {
                              return "lütfen burayı boş bırakmayın";
                            }
                            return "np";
                          },
                          controller: besinkntrl,
                          decoration: InputDecoration(
                            hintText: "besin adını girin",
                          ),
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val.length > 0) {
                              return "lütfen burayı boş bırakmayın";
                            }
                            return "sorun yok";
                          },
                          controller: aykntrl,
                          decoration: InputDecoration(
                            hintText: "tavsiye edilen ay'ı Giriniz",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () =>
                duzenlemi ? _besinGuncelle(besins.no) : _besinEkle(),
                child: Text(duzenlemi ? "Düzenle" : "Ekle"),
              ),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text("İptal"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Besin Paylaşım"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () => eklemeEkraniAc(),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: besinler.length,
        itemBuilder: (BuildContext baglan, int sira) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                      "${besinler[sira].besinadi} ${besinler[sira].ay}"),
                  leading: Text("${besinler[sira].no}"),
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => eklemeEkraniAc(besins: besinler[sira]),
                      child: Text("Güncelle"),
                    ),
                    FlatButton(
                      onPressed: () => _besinSil(besinler[sira]),
                      child: Text("Sil"),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}