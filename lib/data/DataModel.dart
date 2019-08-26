import 'dart:convert';

import 'BirthdayList.dart';

class DataModel {
  static BirthdayList _liste;

  static int length() {
    return _liste.length();
  }

  static void add(entry) {
    _liste.add(entry);
  }

  static void clear() {
    _liste.clear();
  }

  static BirthdayData elementAt(int idx) {
    return (_liste.elementAt(idx));
  }

  static void doPrint() {
    _liste.doPrint();
  }

  static String toJson() {
    return jsonEncode(_liste);
  }

  DataModel() {
    // singleton versuch
    if (_liste == null) {
      _liste = new BirthdayList();
      _liste.clear();
    }
  }
}
