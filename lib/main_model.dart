import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String asanoText = "asano!!";

  void changeAsanoText(){
    asanoText="AsanoAsano";
    notifyListeners(); //変更したことを通知する
  }
}
