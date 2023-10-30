import 'package:flutter/material.dart';

import '../common/global_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonFilter extends StatefulWidget {
  final String title = "";
  final FaIcon? icon;
  final void Function()? onPressed;
  final Color? background;
  final Color? colorWidget;
  final double? height;
  final double? width;

  const ButtonFilter(
      {Key? key,
      this.icon,
      this.onPressed,
      this.background,
      this.height,
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
      onTap: () {},
      child: Container(
        height: 28,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
              color: widget.background != null
                  ? GlobalColors.colorButton1
                  : Colors.black),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.plus,
                size: 12,
                color: widget.colorWidget != null
                    ? GlobalColors.colorButton1
                    : Colors.black),
            const SizedBox(
              width: 5,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 11,
                  color: widget.colorWidget != null
                      ? GlobalColors.colorButton1
                      : Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
