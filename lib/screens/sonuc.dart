import 'package:flutter/material.dart';
import 'package:life_cycle_application/constants.dart';
import 'package:life_cycle_application/userdata/hesap.dart';
import 'package:life_cycle_application/userdata/user_data.dart';

class SonucPage extends StatelessWidget {
  final UserData _userData;
  SonucPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuc Sayfasi")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: Center(
                child: Text(
              Hesap(_userData).hesaplama().round().toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 80.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Expanded(
              flex: 2,
              child: Text("SENE YAŞARSIN BELKİ..",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                child: Text("GERİ DÖN"),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black, primary: Colors.white),
              ))
        ],
      ),
    );
  }
}
