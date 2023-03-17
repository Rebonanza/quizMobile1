import 'package:flutter/material.dart';
import 'package:quiz_mobile/profile.dart';
import 'package:quiz_mobile/layang_layang.dart';
import 'package:quiz_mobile/segitiga.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Menu Utama"),
            ),
            body: ListView(children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SegitigaPage();
                              }));
                            },
                            child: Column(
                              children: [
                                Text("Perhitungan Segitiga"),
                              ],
                            ),
                          )))),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LayangLayangPage();
                              }));
                            },
                            child: Column(
                              children: [
                                Text("Perhitungan Layang-Layang"),
                              ],
                            ),
                          )))),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProfilePage();
                              }));
                            },
                            child: Column(
                              children: [
                                Text("Profile"),
                              ],
                            ),
                          )))),
            ])));
  }
}
