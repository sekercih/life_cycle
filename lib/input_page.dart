import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_cycle_application/wigdets/gender_wigdet.dart';
import 'package:life_cycle_application/wigdets/my_container_wigdet.dart';

class InputSayfasi extends StatefulWidget {
  const InputSayfasi({Key? key}) : super(key: key);

  @override
  _InputSayfasiState createState() => _InputSayfasiState();
}

class _InputSayfasiState extends State<InputSayfasi> {
  String selectGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MUTLAK YAŞAM SÜRESİ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: MyContainer(),
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: MyContainer(
                    renk: selectGender == "KADIN" ? Colors.pink : Colors.white,
                    sonPress: () {
                      setState(() {
                        selectGender == "KADIN";
                      });
                    },
                    child: const CenderWigdet(),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    renk: selectGender == "ERKEK"
                        ? Colors.blueAccent
                        : Colors.white,
                    sonPress: () {
                      setState(() {
                        selectGender == "ERKEK";
                      });
                    },
                    child: const CenderWigdet(
                      gender: "Erkek",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
