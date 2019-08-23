import 'package:json_annotation/json_annotation.dart';

part 'BirthdayList.g.dart';

@JsonSerializable(explicitToJson: true)
class BirthdayList {
  List<BirthdayData> liste;

  int length() {
    return liste.length;
  }

  void add(entry) {
    liste.add(entry);
  }

  void clear() {
    liste.clear();
  }

  BirthdayData elementAt(int idx) {
    if (liste != null) {
      return liste.elementAt(idx);
    }
    return null;
  }

  void doPrint() {
    print("hallo, hallo \n");
    print("\n");
    for (var value in liste) {
      String n = value.vorname;
      print("{$n}\n");
    }
    print(liste.length);
  }

  BirthdayList() {
    liste = List<BirthdayData>();
    liste.clear();
  }

  // JSON stuff
  factory BirthdayList.fromJson(Map<String, dynamic> json) =>
      _$BirthdayListFromJson(json);

  Map<String, dynamic> toJson() => _$BirthdayListToJson(this);
}

@JsonSerializable()
class BirthdayData {
  String vorname;
  String nachname;
  DateTime geburtstag;

  BirthdayData(this.vorname, this.nachname, this.geburtstag);

  // JSON stuff
  factory BirthdayData.fromJson(Map<String, dynamic> json) =>
      _$BirthdayDataFromJson(json);

  Map<String, dynamic> toJson() => _$BirthdayDataToJson(this);

}
