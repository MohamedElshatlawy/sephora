import 'package:flutter/cupertino.dart';
import 'package:sephora/models/userModel.dart';

class UserProvider extends ChangeNotifier {
  UserModel userModel;

  void setUser(UserModel model) {
    userModel = model;
    notifyListeners();
  }
}
