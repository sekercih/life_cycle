import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_cycle_application/constants.dart';
import 'package:life_cycle_application/wigdets/gender_wigdet.dart';
import 'package:life_cycle_application/wigdets/my_container_wigdet.dart';

class InputSayfasi extends StatefulWidget {
  const InputSayfasi({Key? key}) : super(key: key);

  @override
  _InputSayfasiState createState() => _InputSayfasiState();
}

class _InputSayfasiState extends State<InputSayfasi> {
  String selectGender = "";
  double icilenSigara = 6.0;
  double spor = 2.0;
  double suIcmek = 2.0;
  int boy = 180;
  int kilo = 75;

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
                  child: MyContainer(
                    child: buttonRow("BOY"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buttonRow("KİLO"),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: MyContainer(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         const Text(
          //           "Günde Kaç Litre Su İçersin",
          //           style: TextStyle(
          //               fontSize: 25,
          //               color: Colors.black,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         Text(suIcmek.round().toString(),
          //             style: TextStyle(
          //                 fontSize: 35,
          //                 color: Colors.blue.shade700,
          //                 fontWeight: FontWeight.bold)),
          //         Slider.adaptive(
          //             max: 4,
          //             min: 0,
          //             divisions: 20,
          //             label: "$suIcmek",
          //             value: suIcmek,
          //             onChanged: (double newSu) {
          //               setState(() {
          //                 suIcmek = newSu;
          //               });
          //             })
          //       ],
          //     ),
          //   ),
          // ),

          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada Kaç Gün Spor Yaparsın",
                    style: metinStyle,
                  ),
                  Text(spor.round().toString(), style: sayiStyle),
                  Slider.adaptive(
                      max: 7,
                      min: 0,
                      divisions: 7,
                      label: "$spor",
                      value: spor,
                      onChanged: (double newSpor) {
                        setState(() {
                          spor = newSpor;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Günde Kaç Sigara İçiyorsun",
                    style: metinStyle,
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                      min: 0.0,
                      max: 40.0,
                      value: icilenSigara,
                      divisions: 10,
                      label: '$icilenSigara',
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      })
                ],
              ),
              width: 600,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyContainer(
                  renk: selectGender == "KADIN" ? Colors.pink : Colors.white,
                  sonPress: () {
                    setState(() {
                      selectGender = "KADIN";
                    });
                    //secimiSifirla();
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
                    //secimiSifirla();
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
                    //secimiSifirla();
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

  Row buttonRow(String veriDate) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            veriDate,
            style: metinStyle,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            veriDate == "BOY" ? '$boy' : '$kilo',
            style: sayiStyle,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: buttonStyle,
              onPressed: () {
                setState(() {
                  veriDate == "BOY" ? boy++ : kilo++;
                });

                print("artı");
              },
              child: Icon(
                FontAwesomeIcons.plus,
                size: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                setState(() {
                  veriDate == "BOY" ? boy-- : kilo--;
                });
                print("eksi");
              },
              child: Icon(
                FontAwesomeIcons.minus,
                size: 40,
              ),
            ),
          ],
        )
      ],
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
