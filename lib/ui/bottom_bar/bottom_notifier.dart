
import 'package:flutter/material.dart';

class BottomNotifier with ChangeNotifier{
   int _childIndex = 0;
  int get childIndex =>  _childIndex;

  set childIndex(int tabIndex){
    _childIndex = tabIndex;
    notifyListeners();
  }
}