import 'package:shared_preferences/shared_preferences.dart';

saveUserSharedPreference({String mail, String password}) async {
  var sh = await SharedPreferences.getInstance();
  sh.setString("email", mail);
  sh.setString("password", password);
}

Future<Map> getUserSharedPreference() async {
  var sh = await SharedPreferences.getInstance();
  if (sh.containsKey("email")) {
    return {sh.getString("email"): sh.getString("password")};
  }
  return null;
}
