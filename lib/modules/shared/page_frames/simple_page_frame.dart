import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_kit/core/di.dart';
import 'package:simple_kit/core/simple_kit.dart';
import 'package:simple_kit/modules/shared/stack_loader/notifier/stack_loader_notifier.dart';
import 'package:simple_kit/modules/shared/stack_loader/stack_loader.dart';

class SPageFrame extends StatelessObserverWidget {
  const SPageFrame({
    Key? key,
    this.header,
    this.loading,
    this.loadSuccess,
    this.bottomNavigationBar,
    this.loaderText,
    this.color = Colors.transparent,
    required this.child,
  }) : super(key: key);

  final Widget? header;
  final StackLoaderNotifier? loading;
  final StackLoaderNotifier? loadSuccess;
  final Widget? bottomNavigationBar;
  final String? loaderText;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getIt<SimpleKit>().getTheme().scaffoldBackgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      body: StackLoader(
        loaderText: loaderText,
        loading: loading,
        loadSuccess: loadSuccess,
        child: Column(
          children: [
            if (header != null) header!,
            Expanded(
              child: Material(
                color: color,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
