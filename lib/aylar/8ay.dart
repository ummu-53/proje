import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class sekizay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('8 AYLIK'),
        ),
        body: sekizayy());
  }
}

class sekizayy extends StatefulWidget {
  @override
  _sekizayyState createState() => _sekizayyState();
}

class _sekizayyState extends State<sekizayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('8ay').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['8ay'];
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
                Image.asset("assets/sekizay.jpg"),
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