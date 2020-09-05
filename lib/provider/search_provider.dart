import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier{
  bool userSearch=false;

  void changeSearchStatus(bool v){
    userSearch=v;
    notifyListeners();
  }
}