import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class onay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('10 AYLIK'),
        ),
        body: onayy());
  }
}

class onayy extends StatefulWidget {
  @override
  _onayyState createState() => _onayyState();
}

class _onayyState extends State<onayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('10aylık').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['10aylık'];
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
              children: [
                Image.asset("assets/onay.jpg"),
                RaisedButton
                  (child: Text("REHBERI GOR"),
                    color: Colors.purple,
                    onPressed: ()
                    {
                      yazigetir();
                    }

                ),
              ]
          ),
          Column(
            children: [
              Text(gelenyazi.toString(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )],
          )
        ],
      ),
    );
  }
}