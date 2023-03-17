import 'package:flutter/material.dart';

class LuasSegitigaPage extends StatefulWidget {
  const LuasSegitigaPage({Key? key}) : super(key: key);

  @override
  _LuasSegitigaPageState createState() => _LuasSegitigaPageState();
}

class _LuasSegitigaPageState extends State<LuasSegitigaPage> {
  double alas = 0;
  double tinggi = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(children: [
          _AlasField(),
          _TinggiField(),
          _ResultButton(context),
        ]),
      ),
    );
  }

  Widget _AlasField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          alas = double.parse(value);
        },
        decoration: const InputDecoration(
          hintText: 'Alas Segitiga',
          filled: true,
          fillColor: Colors.white70,
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _TinggiField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          tinggi = double.parse(value);
        },
        decoration: const InputDecoration(
          filled: true,
          hintText: 'Tinggi Segitga',
          fillColor: Colors.white70,
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _ResultButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          double result = 0;
          result = (alas * tinggi) / 2;
          SnackBar snackBar =
              SnackBar(content: Text('Luas Segitiga => $result'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Hitung Luas Segitiga'),
      ),
    );
  }
}
