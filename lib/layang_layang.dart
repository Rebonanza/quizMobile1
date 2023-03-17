import 'package:flutter/material.dart';
import 'package:quiz_mobile/kelilingLayangLayang.dart';
import 'package:quiz_mobile/luasLayangLayang.dart';

class LayangLayangPage extends StatefulWidget {
  const LayangLayangPage({Key? key}) : super(key: key);

  @override
  _LayangLayangPageState createState() => _LayangLayangPageState();
}

class _LayangLayangPageState extends State<LayangLayangPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Perhitungan Segitiga"),
            ),
            body: ListView(children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LuasLayangLayangPage();
                      }));
                    },
                    child: Column(
                      children: [
                        Text("Luas Segitiga"),
                      ],
                    ),
                  )))),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return KelilingLayangLayangPage();
                      }));
                    },
                    child: Column(
                      children: [
                        Text("Keliling Segitiga"),
                      ],
                    ),
                  )))),
            ])));
  }
}
