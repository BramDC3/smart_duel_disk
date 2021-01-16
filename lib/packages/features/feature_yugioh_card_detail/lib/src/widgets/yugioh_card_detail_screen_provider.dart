import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart';
import 'package:smart_duel_disk/src/di/di.dart';

import '../yugioh_card_detail_viewmodel.dart';
import 'yugioh_card_detail_screen.dart';

class YugiohCardDetailScreenProvider extends StatelessWidget {
  final YugiohCard yugiohCard;

  const YugiohCardDetailScreenProvider({
    @required this.yugiohCard,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: YugiohCardDetailViewModel(yugiohCard)),
        Provider.value(value: di.get<AssetsProvider>()),
      ],
      child: const YugiohCardDetailScreen(),
    );
  }
}
