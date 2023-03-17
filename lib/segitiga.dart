import 'package:flutter/material.dart';
import 'package:quiz_mobile/luasSegitiga.dart';
import 'package:quiz_mobile/kelilingSegitiga.dart';

class SegitigaPage extends StatefulWidget {
  const SegitigaPage({Key? key}) : super(key: key);

  @override
  _SegitigaPageState createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
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
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LuasSegitigaPage();
                      }));
                    },
                    child: Column(
                      children: [
                        Text("Luas Segitiga"),
                      ],
                    ),
                  ))),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Card(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return KelilingSegitigaPage();
                      }));
                    },
                    child: Column(
                      children: [
                        Text("Keliling Segitiga"),
                      ],
                    ),
                  ))),
            ])));
  }
}
