import 'dart:html';

import 'package:flutter/material.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/artikel.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/data_tamu.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/detail.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/tentang.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/login.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Orbit Future Academy"),
          backgroundColor: Colors.brown,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.logout_rounded),
          backgroundColor: Colors.brown,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(15),
          crossAxisCount: 3,        
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tentang()));
                },
                splashColor: Colors.brown,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.people, size: 70, color: Colors.brown),
                      Text("Tentang", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Artikel()));
                },
                splashColor: Colors.brown,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.collections_bookmark,
                        size: 70,
                        color: Colors.brown,
                      ),
                      Text("Artikel", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InsertData()));
                },
                splashColor: Colors.brown,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.attribution,
                        size: 70,
                        color: Colors.brown,
                      ),
                      Text("Data Tamu", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
