import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../route_generator.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title = '',
    this.showActionIcon = false,
    this.leading,
    this.titleWidget,
    this.onMenuActionTap,
  }) : super(key: key);

  final String title;
  final Widget? titleWidget;
  final bool showActionIcon;
  final Widget? leading;
  final VoidCallback? onMenuActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 1.2),
          child: Stack(
            children: [
              Positioned.fill(
                child: titleWidget == null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Center(
                            child: Text(title,
                                style: const TextStyle(
                                    fontFamily: "Epilogue",
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700))),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Center(child: titleWidget!),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ??
                      Transform.translate(
                          offset: const Offset(-14, 0),
                          child:
                              const BackButton()), // transform to allign icons with body content
                  if (showActionIcon)
                    Transform.translate(
                      offset: const Offset(10,
                          0), // transform to allign icons with body content =>  - CircularButton.padding
                      child: GestureDetector(
                        onTap: onMenuActionTap ??
                            () {
                              navigator!.pushNamed(RouteGenerator.quizOverView);
                            },
                        child: const Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            ],
          )),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
