import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/24x24/light/gift/simple_light_gift_pressed_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SGiftPressedIcon extends StatelessObserverWidget {
  const SGiftPressedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightGiftPressedIcon()
        : const SimpleLightGiftPressedIcon();
  }
}
