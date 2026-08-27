import 'package:flutter/material.dart';
class CounterProvider extends ChangeNotifier{
  int _counterNumber = 0;
  int get counterNumber => _counterNumber;

  void increment(){
    _counterNumber++;
    notifyListeners();
  }
  void decrement(){
    _counterNumber--;
    notifyListeners();
  }
  

}