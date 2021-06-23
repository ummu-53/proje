import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class onikiay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('12 AYLIK'),
        ),
        body: onikiayy());
  }
}

class onikiayy extends StatefulWidget {
  @override
  _onikiayyState createState() => _onikiayyState();
}

class _onikiayyState extends State<onikiayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('12aylık').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['12aylık'];
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
                Image.asset("assets/onikiay.jpg"),
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