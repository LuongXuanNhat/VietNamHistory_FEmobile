import 'package:flutter/material.dart';

import 'global_configs.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key? key,
    required this.child,
    this.addPadding = true,
  }) : super(key: key);

  final Widget child;
  final bool addPadding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      clipBehavior: Clip.hardEdge,
      type: MaterialType.transparency,
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: addPadding
            ? const EdgeInsets.only(
                top: kMobileScreenPadding,
                left: kMobileScreenPadding,
                right: kMobileScreenPadding)
            : EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
