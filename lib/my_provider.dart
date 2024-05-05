import 'package:flutter/material.dart';

class MProvider with ChangeNotifier{
  ThemeMode tm = ThemeMode.light;
  bool state = false  ;
    Color light = Colors.deepPurpleAccent;
  void changed(bool val ){
       state = val ;
       if(state == false){
        tm = ThemeMode.light;
        light = Colors.deepPurpleAccent;
       }else{
        tm = ThemeMode.dark;
        light = Colors.black;
       }
       notifyListeners();
  }

}