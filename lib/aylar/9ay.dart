import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class dokuzay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('9 AYLIK'),
        ),
        body: dokuzayy());
  }
}

class dokuzayy extends StatefulWidget {
  @override
  _dokuzayyState createState() => _dokuzayyState();
}

class _dokuzayyState extends State<dokuzayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('9ay').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['9ay'];
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
                Image.asset("assets/dokuzay.jpg"),
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