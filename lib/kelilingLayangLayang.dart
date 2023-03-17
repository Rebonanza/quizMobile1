import 'package:flutter/material.dart';

class KelilingLayangLayangPage extends StatefulWidget {
  const KelilingLayangLayangPage({Key? key}) : super(key: key);

  @override
  _KelilingLayangLayangPageState createState() =>
      _KelilingLayangLayangPageState();
}

class _KelilingLayangLayangPageState extends State<KelilingLayangLayangPage> {
  double d1 = 0;
  double d2 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Keliling Layang Layang"),
        ),
        body: Column(children: [
          _Diagonal1Field(),
          _Diagonal2Field(),
          _ResultButton(context),
        ]),
      ),
    );
  }

  Widget _Diagonal1Field() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          d1 = double.parse(value);
        },
        decoration: const InputDecoration(
          filled: true,
          hintText: 'Diagonal 1 Layang',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _Diagonal2Field() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          d2 = double.parse(value);
        },
        decoration: const InputDecoration(
          hintText: 'Diagonal 2 Layang Layang',
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
          result = (d1 + d2) / 2;
          SnackBar snackBar =
              SnackBar(content: Text('Keliling Layang-Layang $result'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Hitung Keliling'),
      ),
    );
  }
}
