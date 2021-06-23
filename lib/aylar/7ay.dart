import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class yediay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('7 AYLIK'),
        ),
        body: yediayy());
  }
}

class yediayy extends StatefulWidget {
  @override
  _yediayyState createState() => _yediayyState();
}

class _yediayyState extends State<yediayy> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("beslenme")
        .doc('7ay').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['7ay'];
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
                Image.asset("assets/yediay.jpg"),
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