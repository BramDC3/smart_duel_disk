// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEventData _$CardEventDataFromJson(Map<String, dynamic> json) {
  return CardEventData(
    cardId: json['cardId'] as String,
    zoneName: json['zoneName'] as String,
    cardPosition: json['cardPosition'] as String,
  );
}

Map<String, dynamic> _$CardEventDataToJson(CardEventData instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'zoneName': instance.zoneName,
      'cardPosition': instance.cardPosition,
    };
