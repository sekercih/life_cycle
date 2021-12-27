import 'package:life_cycle_application/userdata/user_data.dart';

class Hesap {
  UserData _userData;
  Hesap(this._userData);

  double hesaplama() {
    double sonuc;
    sonuc = 70 + _userData.spor - _userData.icilenSigara;
    sonuc = sonuc + (_userData.boy / _userData.kilo);

    if (_userData.selectGender == "KADIN") {
      return sonuc + 10;
    } else if (_userData.selectGender == "ERKEK") {
      return sonuc + 5;
    } else {
      return sonuc;
    }
  }
}
