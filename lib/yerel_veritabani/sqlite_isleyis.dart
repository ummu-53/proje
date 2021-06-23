import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:ummugulsum/yerel_veritabani/sqlite_temel.dart';

class VtYardimcisi {
  static final VtYardimcisi _yardimci = new VtYardimcisi.icislem();

  factory VtYardimcisi() => _yardimci;

  VtYardimcisi.icislem();

  static Database _vt;

  Future<Database> get veritabani async {
    if (_vt != null) return _vt;
    _vt = await olusturVt();
    return _vt;
  }

  olusturVt() async {
    io.Directory dosyaKonumu = await getApplicationDocumentsDirectory();
    String yol = join(dosyaKonumu.path, "burc.db");
    var veriTabani = await openDatabase(yol, version: 1, onCreate: _ilkAcilis);
    return veriTabani;
  }

  _ilkAcilis(Database vt, int versiyon) async {
    await vt.execute(
        "CREATE TABLE Besin(no INTEGER PRIMARY KEY AUTOINCREMENT, besinadi TEXT, ay TEXT)");
  }

  Future<int> besinKaydet(besinsqlite burc) async {
    var veritab = await veritabani;
    int cvp = await veritab.insert("Besin", burc.haritaYap());
    return cvp;
  }

  Future<List<besinsqlite>> besinleriGetir() async {
    var veritab = await veritabani;
    List<Map> liste = await veritab.rawQuery("SELECT * FROM Besin");
    List<besinsqlite> besinler = new List();
    for (int i = 0; i < liste.length; i++) {
      var besins = new besinsqlite(
          liste[i]["besinadi"], liste[i]["ay"]);
      besins.numaraVer(liste[i]["no"]);
      besinler.add(besins);
    }
    return besinler;
  }
  Future<int>besinSil(besinsqlite burc) async{
    var veritab=await veritabani;
    int cvp=await veritab.rawDelete("DELETE FROM Besin WHERE no = ?",[burc.no]);
    return cvp;
  }

  Future<bool> besinGuncelle(besinsqlite burc) async {
    var veritab=await veritabani;
    int cvp=await veritab.update("Besin", burc.haritaYap(),where: "no = ?",whereArgs: <int>[burc.no]);
    return cvp > 0 ? true : false;
  }
}