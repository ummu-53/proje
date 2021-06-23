import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class altiay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('6 AYLIK'),
        ),
        body: altiayy());
  }
}

class altiayy extends StatefulWidget {
  @override
  _altiayyState createState() => _altiayyState();
}

class _altiayyState extends State<altiayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('6ay').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['6ay'];
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
                 Image.asset("assets/altiay.jpg"),
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