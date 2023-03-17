import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Menu Utama"),
            ),
            body: ListView(children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  child: Card(child: Text('Nama : Giventheo Khemides'))),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Card(child: Text('NIM = 123200063'))),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Card(child: Text('Kelas = TPM IF-E'))),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Card(child: Text('Hobby = Menonton Film'))),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Card(
                      child: Image.asset('assets/images/profile.png',
                          height: 80, width: 80))),
            ])));
  }
}
