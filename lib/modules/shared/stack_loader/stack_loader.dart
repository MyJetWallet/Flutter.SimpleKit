import 'package:flutter/material.dart';
import 'package:simple_kit/modules/shared/stack_loader/components/loader_background.dart';
import 'package:simple_kit/modules/shared/stack_loader/components/loader_container.dart';
import 'package:simple_kit/modules/shared/stack_loader/components/simple_loader_success.dart';
import 'package:simple_kit/modules/shared/stack_loader/notifier/stack_loader_notifier.dart';

class StackLoader extends StatelessWidget {
  const StackLoader({
    Key? key,
    this.loadSuccess,
    this.loaderText,
    required this.child,
    required this.loading,
  }) : super(key: key);

  final Widget child;
  final String? loaderText;
  final StackLoaderNotifier? loading;
  final StackLoaderNotifier? loadSuccess;

  @override
  Widget build(BuildContext context) {
    //if (loading != null) useValueListenable(loading!);
    final loadingValue = loading?.value ?? false;

    //if (loadSuccess != null) useValueListenable(loadSuccess!);
    final loadSuccessValue = loadSuccess?.value ?? false;

    return Stack(
      children: [
        child,
        if (loadingValue) ...[
          const LoaderBackground(),
          LoaderContainer(
            loadingText: loaderText,
          ),
        ],
        if (loadSuccessValue) ...[
          const LoaderBackground(),
          SimpleLoaderSuccess(
            loadingText: loaderText,
          ),
        ],
      ],
    );
  }
}
