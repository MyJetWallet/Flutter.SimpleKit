import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/24x24/light/top_up/simple_light_top_up_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class STopUpIcon extends StatelessObserverWidget {
  const STopUpIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightTopUpIcon()
        : const SimpleLightTopUpIcon();
  }
}
