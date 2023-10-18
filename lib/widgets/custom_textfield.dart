import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/dimension.dart';

import '../common/global_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? hintLabel;
  final bool isShowPass;
  final bool isObscure;
  final VoidCallback? onPressedObscure;
  final VoidCallback? onTap;
  final bool isEnable;
  final TextInputType? keyboardKey;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final bool readOnly;
  final String? hintText;
  final String? readLabel;
  final FocusNode? myFocusNode = FocusNode();
  final String? errorText;
  final Widget? suffixIcon;
  final int? maxLength;
  final Function(String)? onchanged;

  CustomTextField(
      {Key? key,
      this.hintLabel,
      this.isShowPass = false,
      this.isObscure = false,
      this.onPressedObscure,
      this.onTap,
      this.isEnable = false,
      this.keyboardKey,
      this.validator,
      this.inputFormatter,
      this.controller,
      this.textInputAction,
      this.prefixIcon,
      this.readOnly = false,
      this.hintText,
      this.readLabel,
      this.errorText,
      this.suffixIcon,
      this.maxLength,
      this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primarySwatch: Colors.blue),
      child: TextFormField(
        key: key,
        // scrollPadding:
        //     EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        focusNode: myFocusNode,
        validator: validator,
        controller: controller,
        obscureText: isShowPass,
        keyboardType: keyboardKey,
        inputFormatters: inputFormatter,
        textInputAction: textInputAction,
        readOnly: readOnly,
        maxLength: maxLength,
        //    onChanged: (value) => onchanged!(value),
        style: const TextStyle(fontSize: Dimension.FONT_SIZE_DEFAULT),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText ?? "",
          enabled: isEnable,
          hintStyle: TextStyle(
              height: 1,
              color: Colors.grey[400],
              fontSize: Dimension.FONT_SIZE_TEXT_HINT,
              fontFamily: 'Inter'),
          label: Column(
            children: [
              Row(
                children: [
                  Text(
                    hintLabel ?? "",
                    style: GlobalStyles.titilliumBold(context),
                    textScaleFactor: 1.5,
                  ),
                  Text(
                    readLabel ?? "",
                    style: const TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
          errorText: errorText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
