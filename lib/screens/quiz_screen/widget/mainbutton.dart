import 'package:flutter/material.dart';

import '../../../common/global_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    this.title = '   ',
    required this.onTap,
    this.enabled = true,
    this.child,
    this.color,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final bool enabled;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        height: 55,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: enabled == false ? null : onTap,
          child: Ink(
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color ?? GlobalColors.ButtonNavigation),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: child ??
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
