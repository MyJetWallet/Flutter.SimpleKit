import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/20x20/light/deposit/simple_light_deposit_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SDepositIcon extends StatelessObserverWidget {
  const SDepositIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightDepositIcon()
        : const SimpleLightDepositIcon();
  }
}
