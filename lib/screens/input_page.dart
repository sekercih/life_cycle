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
  static double _icilenSigara = 2.0;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Günde Kaç sigara içiliyor",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "5",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  // Slider.adaptive(
                  //     value: _icilenSigara,
                  //     onChanged: (double newValue) {
                  //       setState(() {
                  //         _icilenSigara = newValue;
                  //       });
                  //     })
                ],
              ),
              width: 600,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyContainer(
                  renk: selectGender == "KADIN" ? Colors.pink : Colors.white,
                  sonPress: () {
                    setState(() {
                      selectGender = "KADIN";
                    });
                    secimiSifirla();
                  },
                  child: const CenderWigdet(),
                ),
                MyContainer(
                  renk:
                      selectGender == "ERKEK" ? Colors.lightBlue : Colors.white,
                  sonPress: () async {
                    setState(() {
                      selectGender = "ERKEK";
                    });
                    secimiSifirla();
                  },
                  child: const CenderWigdet(
                    gender: "Erkek",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                MyContainer(
                  renk: selectGender == "DİĞER"
                      ? Color(0x8EE70707)
                      : Colors.white,
                  sonPress: () async {
                    setState(() {
                      selectGender = "DİĞER";
                    });
                    secimiSifirla();
                  },
                  child: const CenderWigdet(
                    color: Color(0xFFE0491A),
                    gender: "DİĞER",
                    icon: FontAwesomeIcons.transgender,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void secimiSifirla() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        selectGender = "";
      });
    });
  }
}
