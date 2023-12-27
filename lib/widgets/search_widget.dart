import 'package:flutter/material.dart';

import '../common/global_colors.dart';

class SearchWidget extends StatelessWidget {
  final Function(String?)? onChange;
  final VoidCallback? onPressedFilter;
  final String? hintText;
  final TextEditingController? controller;
  final bool? isShowFilter;
  final Widget? prefixIcon;
  final bool? isShowBorder;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  const SearchWidget({
    Key? key,
    this.onChange,
    this.onPressedFilter,
    this.hintText,
    this.controller,
    this.isShowFilter = false,
    this.prefixIcon,
    this.isShowBorder,
    this.onTap,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.only(right: 1, top: 2, bottom: 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: (isShowBorder ?? true)
              ? Border.all(
                  color: Colors.black,
                  width: 1.5,
                )
              : null),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: TextField(
          onSubmitted: onSubmitted,
          onTap: onTap,
          controller: controller,
          onChanged: onChange,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              errorBorder: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              fillColor: GlobalColors.ButtonNavigation,
              contentPadding: const EdgeInsets.only(bottom: 8.0, right: 5.0),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: hintText ?? '',
              prefixIcon: prefixIcon,
              hintStyle: const TextStyle(color: Colors.grey),
              suffixIcon: (isShowFilter ?? false)
                  ? GestureDetector(
                      onTap: () {
                        if (onPressedFilter != null) {
                          onPressedFilter!();
                        }
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black87),
                        child: const Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : null),
        ),
      ),
    );
  }
}
