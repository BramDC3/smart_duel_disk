import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';

import 'card_position.dart';
import 'zone_type.dart';

@immutable
class PlayCard extends Equatable {
  final YugiohCard yugiohCard;
  final ZoneType zoneType;
  final CardPosition position;
  final int copyNumber;
  final String formattedRaceAndType;
  final String formattedAttack;
  final String formattedDefence;
  final String formattedLevel;
  final String attributeAssetName;

  const PlayCard({
    @required this.yugiohCard,
    @required this.zoneType,
    @required this.position,
    @required this.copyNumber,
    @required this.formattedRaceAndType,
    this.formattedAttack,
    this.formattedDefence,
    this.formattedLevel,
    this.attributeAssetName,
  });

  PlayCard copyWith({ZoneType zoneType, CardPosition position}) {
    return PlayCard(
      yugiohCard: yugiohCard,
      zoneType: zoneType ?? this.zoneType,
      position: position ?? this.position,
      copyNumber: copyNumber,
      formattedRaceAndType: formattedRaceAndType,
      formattedAttack: formattedAttack,
      formattedDefence: formattedDefence,
      formattedLevel: formattedLevel,
      attributeAssetName: attributeAssetName,
    );
  }

  @override
  List<Object> get props => [
        yugiohCard,
        zoneType,
        position,
        copyNumber,
        formattedRaceAndType,
        formattedAttack,
        formattedDefence,
        formattedLevel,
        attributeAssetName,
      ];

  @override
  bool get stringify => true;
}
