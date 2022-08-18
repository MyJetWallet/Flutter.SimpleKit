import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/24x24/light/back/simple_light_back_pressed_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SBackPressedIcon extends StatelessObserverWidget {
  const SBackPressedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sKit.currentTheme == STheme.dark
        ? const SimpleLightBackPressedIcon()
        : const SimpleLightBackPressedIcon();
  }
}
