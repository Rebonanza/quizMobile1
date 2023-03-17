import 'package:flutter/material.dart';

class KelilingSegitigaPage extends StatefulWidget {
  const KelilingSegitigaPage({Key? key}) : super(key: key);

  @override
  _KelilingSegitigaPageState createState() => _KelilingSegitigaPageState();
}

class _KelilingSegitigaPageState extends State<KelilingSegitigaPage> {
  double miring1 = 0;
  double miring2 = 0;
  double alas = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(children: [
          _AlasField(),
          _Miring1Field(),
          _Miring2Field(),
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
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _Miring1Field() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          miring1 = double.parse(value);
        },
        decoration: const InputDecoration(
          hintText: 'Miring 1 Segitga',
          filled: true,
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _Miring2Field() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          miring2 = double.parse(value);
        },
        decoration: const InputDecoration(
          hintText: 'Miring 2 Segitga',
          filled: true,
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
          result = alas + miring1 + miring2;
          SnackBar snackBar =
              SnackBar(content: Text('Keliling Segitiga $result'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Hitung Keliling'),
      ),
    );
  }
}
