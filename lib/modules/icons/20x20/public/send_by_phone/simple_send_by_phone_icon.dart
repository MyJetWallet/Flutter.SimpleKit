import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/20x20/light/send_by_phone/simple_light_send_by_phone_icon.dart';
import 'package:simple_kit/utils/enum.dart';

class SSendByPhoneIcon extends StatelessObserverWidget {
  const SSendByPhoneIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sKit.currentTheme == STheme.dark
        ? const SimpleLightSendByPhoneIcon()
        : const SimpleLightSendByPhoneIcon();
  }
}
