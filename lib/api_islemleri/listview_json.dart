import 'package:flutter/material.dart';
import 'package:ummugulsum/api_islemleri/json_model.dart';
import 'package:ummugulsum/api_islemleri/json_servis.dart';
import 'package:ummugulsum/aylar/10ay.dart';
import 'package:ummugulsum/aylar/11ay.dart';
import 'package:ummugulsum/aylar/12ay.dart';
import 'package:ummugulsum/aylar/6ay.dart';
import 'package:ummugulsum/aylar/7ay.dart';
import 'package:ummugulsum/aylar/8ay.dart';
import 'package:ummugulsum/aylar/9ay.dart';
import 'package:ummugulsum/sayfalar/anasayfa.dart';

class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
   Future<List<Ay>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BEBEK AY DURUMU'),
      ),
      body: Center(
        child: FutureBuilder<List<Ay>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Ay> data = snapshot.data;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.login),
                      title: Text("  BEBEK DURUMU : " + data[index].ay.toString()),
                    onTap: () {
                      if(data[index].ay=="6 aylık")
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => altiay()));
                        }
                      if(data[index].ay=="7 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => yediay()));
                      }
                      if(data[index].ay=="8 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sekizay()));
                      }
                      if(data[index].ay=="9 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dokuzay()));
                      }
                      if(data[index].ay=="10 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => onay()));
                      }
                      if(data[index].ay=="11 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => onbiray()));
                      }
                      if(data[index].ay=="12 aylık")
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => onikiay()));
                      }
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}