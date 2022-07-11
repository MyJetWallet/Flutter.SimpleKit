import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:simple_kit/modules/theme/simple_dark_theme.dart';
import 'package:simple_kit/modules/theme/simple_light_theme.dart';
import 'package:simple_kit/utils/enum.dart';

part 'simple_kit.g.dart';

// ignore: library_private_types_in_public_api
class SimpleKit = _SimpleKitBase with _$SimpleKit;

abstract class _SimpleKitBase with Store {
  /// Value for changing theme, defaults to lightTheme
  @observable
  STheme currentTheme = STheme.light;
  @action
  setCurrentTheme(STheme value) => currentTheme = value;

  CupertinoThemeData getTheme() {
    return currentTheme == STheme.dark ? sDarkTheme : sLightTheme;
  }
}
