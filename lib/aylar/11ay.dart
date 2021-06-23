import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class onbiray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('11 AYLIK'),
        ),
        body: onbirayy());
  }
}

class onbirayy extends StatefulWidget {
  @override
  _onbirayyState createState() => _onbirayyState();
}

class _onbirayyState extends State<onbirayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('11aylık').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['11aylık'];
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
                Image.asset("assets/onbiray.jpg"),
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