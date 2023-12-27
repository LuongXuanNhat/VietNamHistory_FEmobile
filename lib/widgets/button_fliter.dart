import 'package:flutter/material.dart';

import '../common/global_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonFilter extends StatefulWidget {
  final String? title;
  final FaIcon? icon;
  final VoidCallback? onToggle;
  final bool? isSelected;
  final Color? background;
  final Color? colorWidget;
  final double? height;
  final bool? isPrefix;
  final double? width;

  const ButtonFilter(
      {Key? key,
      this.icon,
      this.onToggle,
      this.title = "",
      this.isSelected = false,
      this.background,
      this.height,
      this.isPrefix = false,
      this.width,
      this.colorWidget})
      : super(key: key);

  @override
  State<ButtonFilter> createState() => _ButtonFilterState();
}

class _ButtonFilterState extends State<ButtonFilter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onToggle,
      child: Container(
        height: 28,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
              color: widget.isSelected == true
                  ? GlobalColors.ButtonNavigation
                  : Colors.black54),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.isPrefix == true)
              FaIcon(FontAwesomeIcons.plus,
                  size: 12,
                  color: widget.colorWidget != null
                      ? GlobalColors.colorButton1
                      : Colors.black54),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Text(
                widget.title!,
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 11,
                    color: widget.isSelected == true
                        ? GlobalColors.ButtonNavigation
                        : Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
