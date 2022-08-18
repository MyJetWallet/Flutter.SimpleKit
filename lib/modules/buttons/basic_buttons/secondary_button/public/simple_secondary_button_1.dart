import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/utils/enum.dart';
import '../dark/simple_dark_secondary_button_1.dart';
import '../light/simple_light_secondary_button_1.dart';

class SSecondaryButton1 extends StatelessObserverWidget {
  const SSecondaryButton1({
    Key? key,
    this.icon,
    required this.active,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  final Widget? icon;
  final bool active;
  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return sKit.currentTheme == STheme.dark
        ? SimpleDarkSecondaryButton1(
            active: active,
            name: name,
            icon: icon,
            onTap: onTap,
          )
        : SimpleLightSecondaryButton1(
            active: active,
            name: name,
            icon: icon,
            onTap: onTap,
          );
  }
}
