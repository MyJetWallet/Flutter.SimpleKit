import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/20x20/light/withdrawal_fee/simple_light_withdrawal_fee_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SWithdrawalFeeIcon extends StatelessObserverWidget {
  const SWithdrawalFeeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightWithdrawalFeeIcon()
        : const SimpleLightWithdrawalFeeIcon();
  }
}
