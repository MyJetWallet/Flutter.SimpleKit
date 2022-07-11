import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/24x24/light/mail/simple_light_mail_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SMailIcon extends StatelessObserverWidget {
  const SMailIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<SimpleKit>().currentTheme == STheme.dark
        ? const SimpleLightMailIcon()
        : const SimpleLightMailIcon();
  }
}
