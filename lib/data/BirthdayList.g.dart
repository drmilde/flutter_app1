// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BirthdayList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthdayList _$BirthdayListFromJson(Map<String, dynamic> json) {
  return BirthdayList()
    ..liste = (json['liste'] as List)
        ?.map((e) =>
            e == null ? null : BirthdayData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BirthdayListToJson(BirthdayList instance) =>
    <String, dynamic>{
      'liste': instance.liste?.map((e) => e?.toJson())?.toList()
    };

BirthdayData _$BirthdayDataFromJson(Map<String, dynamic> json) {
  return BirthdayData(
      json['vorname'] as String,
      json['nachname'] as String,
      json['geburtstag'] == null
          ? null
          : DateTime.parse(json['geburtstag'] as String));
}

Map<String, dynamic> _$BirthdayDataToJson(BirthdayData instance) =>
    <String, dynamic>{
      'vorname': instance.vorname,
      'nachname': instance.nachname,
      'geburtstag': instance.geburtstag?.toIso8601String()
    };
