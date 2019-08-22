class DataModel {
  static List<BirthdayData> liste;

  static void add(entry) {
    liste.add(entry);
  }

  static void clear() {
    liste.clear();
  }

  static BirthdayData elementAt(int idx) {
    if (liste != null) {
      return liste.elementAt(idx);
    }
    return null;
  }

  static void doPrint() {
    print("hallo, hallo \n");
    print("\n");
    for (var value in liste) {
      String n = value.vorname;
      print("{$n}\n");
    }
    print(liste.length);
  }

  DataModel() {
    liste = List<BirthdayData>();
    liste.clear();
  }
}

class BirthdayData {
  String _vorname;
  String _nachname;
  DateTime _geburtstag;

  String get vorname => _vorname;

  set vorname(String value) {
    _vorname = value;
  }

  String get nachname => _nachname;

  set nachname(String value) {
    _nachname = value;
  }

  DateTime get geburtstag => _geburtstag;

  set geburtstag(DateTime value) {
    _geburtstag = value;
  }

  BirthdayData(this._vorname, this._nachname, this._geburtstag);
}