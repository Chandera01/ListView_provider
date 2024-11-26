import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  //global variable
   List<Map<String , dynamic>> _mData = [];

  ///events
  void addData(){
    _mData.add({
      "name" : "Kinjal",
      "Mono" : "345678956",
    });
    notifyListeners();
  }

  List<Map<String,dynamic>> getValue() => _mData;

}