import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/16x16/light/minus/simple_light_minus_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SMinusIcon extends StatelessObserverWidget {
  const SMinusIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightMinusIcon()
        : const SimpleLightMinusIcon();
  }
}
