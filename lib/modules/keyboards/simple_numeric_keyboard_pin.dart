import 'package:flutter/material.dart';

import '../../simple_kit.dart';
import 'components/numeric_keyboard_frame.dart';
import 'components/numeric_keyboard_row.dart';

/// Check on [face] and [fingerprint] keys, must be provided onResponse
/// from this Keyboard. \
/// If available biometrics such as [face] or [fingerprint] shows
/// BiometricButton.
class SNumericKeyboardPin extends StatefulWidget {
  const SNumericKeyboardPin({
    Key? key,
    this.hideBiometricButton,
    required this.onKeyPressed,
  }) : super(key: key);

  final bool? hideBiometricButton;
  final void Function(String) onKeyPressed;

  @override
  State<SNumericKeyboardPin> createState() => _SNumericKeyboardPinState();
}

class _SNumericKeyboardPinState extends State<SNumericKeyboardPin> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getBiometricStatus();
    });
  }

  late Widget biometricIcon;
  late Widget biometricPressedIcon;
  late String biometricIconValue;

  Future<void> getBiometricStatus() async {
    try {
      final BiometricStatus biometricStatusData = await biometricStatus();

      setState(() {
        biometricIcon = _iconBasedOnBiometricStatus(biometricStatusData);
        biometricPressedIcon =
            _iconPressedBasedOnBiometricStatus(biometricStatusData);
        biometricIconValue = _realValueOfBiometricButton(biometricStatusData);
      });
    } catch (e) {
      setState(() {
        biometricIcon = const SizedBox();
        biometricPressedIcon = const SizedBox();
        biometricIconValue = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _hideBiometricButton() => biometricIcon is SizedBox;

    return NumericKeyboardFrame(
      height: 354.0,
      paddingTop: 40.0,
      heightBetweenRows: 10,
      lastRow: NumericKeyboardRow(
        icon1: biometricIcon,
        iconPressed1: biometricPressedIcon,
        realValue1: biometricIconValue,
        hideIcon1: widget.hideBiometricButton ?? _hideBiometricButton(),
        frontKey2: zero,
        realValue2: zero,
        icon3: const SNumericKeyboardEraseIcon(),
        iconPressed3: const SNumericKeyboardErasePressedIcon(),
        realValue3: backspace,
        onKeyPressed: widget.onKeyPressed,
      ),
      onKeyPressed: widget.onKeyPressed,
    );
  }
}

String _realValueOfBiometricButton(BiometricStatus bioStatus) {
  if (bioStatus == BiometricStatus.face) {
    return face;
  } else if (bioStatus == BiometricStatus.fingerprint) {
    return fingerprint;
  } else {
    return '';
  }
}

Widget _iconBasedOnBiometricStatus(BiometricStatus bioStatus) {
  if (bioStatus == BiometricStatus.face) {
    return const SNumericKeyboardFaceIdIcon();
  } else if (bioStatus == BiometricStatus.fingerprint) {
    return const SNumericKeyboardFingerprintIcon();
  } else {
    return const SizedBox();
  }
}

Widget _iconPressedBasedOnBiometricStatus(BiometricStatus bioStatus) {
  if (bioStatus == BiometricStatus.face) {
    return const SNumericKeyboardFaceIdPressedIcon();
  } else if (bioStatus == BiometricStatus.fingerprint) {
    return const SNumericKeyboardFingerprintPressedIcon();
  } else {
    return const SizedBox();
  }
}
