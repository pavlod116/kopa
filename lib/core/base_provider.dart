import 'package:flutter/material.dart';
import 'package:kopa_shop/enums/states/notifier_states.dart';


class BaseProvider with ChangeNotifier {
  NotifierState _state = NotifierState.initial;

  NotifierState get state => _state;

  void setNotifier(NotifierState state) {
    _state = state;
    notifyListeners();
  }
}
