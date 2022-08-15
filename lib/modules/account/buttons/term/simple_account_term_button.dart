import 'package:flutter/material.dart';
import 'package:simple_kit/modules/shared/simple_transparent_ink_well.dart';

import '../../../../simple_kit.dart';

class SimpleAccountTermButton extends StatelessWidget {
  const SimpleAccountTermButton({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
          ),
        ),
      ),
      child: STransparentInkWell(
        onTap: onTap,
        child: Text(
          name,
          style: sBodyText2Style,
        ),
      ),
    );
  }
}
