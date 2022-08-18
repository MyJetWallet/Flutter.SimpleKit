import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/20x20/light/reward_payment/simple_light_reward_payment_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SRewardPaymentIcon extends StatelessObserverWidget {
  const SRewardPaymentIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sKit.currentTheme == STheme.dark
        ? const SimpleLightRewardPaymentIcon()
        : const SimpleLightRewardPaymentIcon();
  }
}
