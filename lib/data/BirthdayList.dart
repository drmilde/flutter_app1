import 'package:json_annotation/json_annotation.dart';

part 'BirthdayList.g.dart';

@JsonSerializable()
class BirthdayList {
  List<BirthdayData> _liste;

  int length() {
    return _liste.length;
  }

  void add(entry) {
    _liste.add(entry);
  }

  void clear() {
    _liste.clear();
  }

  BirthdayData elementAt(int idx) {
    if (_liste != null) {
      return _liste.elementAt(idx);
    }
    return null;
  }

  void doPrint() {
    print("hallo, hallo \n");
    print("\n");
    for (var value in _liste) {
      String n = value.vorname;
      print("{$n}\n");
    }
    print(_liste.length);
  }

  BirthdayList() {
    _liste = List<BirthdayData>();
    _liste.clear();
  }

  factory BirthdayList.fromJson(Map<String, dynamic> json) =>
      _$BirthdayListFromJson(json);

  Map<String, dynamic> toJson() => _$BirthdayListToJson(this);
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
