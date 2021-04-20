import 'package:flutter/material.dart';
import 'package:ummugulsum/armut.dart';
import 'package:ummugulsum/avakado.dart';
import 'package:ummugulsum/balkabagi.dart';
import 'package:ummugulsum/brokoli.dart';
import 'package:ummugulsum/cilek.dart';
import 'package:ummugulsum/elma.dart';
import 'package:ummugulsum/enginar.dart';
import 'package:ummugulsum/havuc.dart';
import 'package:ummugulsum/kabak.dart';
import 'package:ummugulsum/karnabahar.dart';
import 'package:ummugulsum/karpuz.dart';
import 'package:ummugulsum/kavun.dart';
import 'package:ummugulsum/muz.dart';
import 'package:ummugulsum/patates.dart';
import 'package:ummugulsum/seftali.dart';
import 'package:ummugulsum/taze_fasulye.dart';

class butonlar extends StatefulWidget {
  @override
  _butonlarState createState() => _butonlarState();
}

class _butonlarState extends State<butonlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "BEBEK BESLENME REHBERİ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => elma()),
                      );
                    },
                    child: Text("ELMA"),
                  ),
                  SizedBox(width: 80.0,),
                  RaisedButton(
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => armut()),
                      );
                    },
                    child: Text("ARMUT"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => muz()),
                      );
                    },
                    child: Text("MUZ"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => enginar()),
                      );
                    },
                    child: Text("ENGİNAR"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => taze_fasulye()),
                      );
                    },
                    child: Text("TAZE FASULYE"),
                  ),
                  SizedBox(width: 60,),
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => kavun()),
                      );
                    },
                    child: Text("KAVUN"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => cilek()),
                      );
                    },
                    child: Text("ÇİLEK"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => karpuz()),
                      );
                    },
                    child: Text("KARPUZ"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => avakado()),
                      );
                    },
                    child: Text("AVAKADO"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => seftali()),
                      );
                    },
                    child: Text("ŞEFTALİ"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => havuc()),
                      );
                    },
                    child: Text("HAVUÇ"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => balkabagi()),
                      );
                    },
                    child: Text("BALKABAĞI"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.black12,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => patates()),
                      );
                    },
                    child: Text("PATATES"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.black12,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => kabak()),
                      );
                    },
                    child: Text("KABAK"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => karnabahar()),
                      );
                    },
                    child: Text("KARNABAHAR"),
                  ),
                  SizedBox(width: 80,),
                  RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => brokoli()),
                      );
                    },
                    child: Text("BROKOLİ"),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),)
      ,
    );
  }
}
