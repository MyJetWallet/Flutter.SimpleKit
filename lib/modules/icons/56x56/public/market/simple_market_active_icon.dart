import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/56x56/light/market/simple_light_market_active_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SMarketActiveIcon extends StatelessObserverWidget {
  const SMarketActiveIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightMarketActiveIcon()
        : const SimpleLightMarketActiveIcon();
  }
}
