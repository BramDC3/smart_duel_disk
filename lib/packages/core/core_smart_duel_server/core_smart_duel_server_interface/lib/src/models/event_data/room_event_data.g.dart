// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomEventData _$RoomEventDataFromJson(Map<String, dynamic> json) {
  return RoomEventData(
    roomName: json['roomName'] as String,
    ready: json['ready'] as bool,
    error: _$enumDecodeNullable(_$RoomErrorEnumMap, json['error'],
        unknownValue: RoomError.unknown),
  );
}

Map<String, dynamic> _$RoomEventDataToJson(RoomEventData instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'ready': instance.ready,
      'error': _$RoomErrorEnumMap[instance.error],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$RoomErrorEnumMap = {
  RoomError.roomNotFound: 'roomNotFound',
  RoomError.tooManyPlayers: 'tooManyPlayers',
  RoomError.unknown: 'unknown',
};