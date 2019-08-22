import 'BirthdayList.dart';

class DataModel {
  static BirthdayList liste;

  static int length() {
    return liste.length();
  }

  static void add(entry) {
    liste.add(entry);
  }

  static void clear() {
    liste.clear();
  }

  static BirthdayData elementAt(int idx) {
    return (liste.elementAt(idx));
  }

  static void doPrint() {
    liste.doPrint();
  }

  DataModel() {
    liste = new BirthdayList();
    liste.clear();
  }
}
