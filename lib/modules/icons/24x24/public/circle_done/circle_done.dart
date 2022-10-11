import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/icons/24x24/light/circle_done/circle_done.dart';
import 'package:simple_kit/utils/enum.dart';

class SCircleDone extends StatelessObserverWidget {
  const SCircleDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sKit.currentTheme == STheme.dark
        ? const SimpleLightCircleDoneIcon()
        : const SimpleLightCircleDoneIcon();
  }
}
