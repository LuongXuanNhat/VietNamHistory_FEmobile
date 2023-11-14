import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/global_colors.dart';
import '../common/global_styles.dart';

class CustomDropDown extends StatelessWidget {
  final String labelText;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const CustomDropDown(
      {Key? key,
      required this.labelText,
      required this.value,
      required this.items,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: const Text('Lựa chọn'),
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
                child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w100),
            ));
          }).toList(),
        ),
      ),
    );
  }
}

class CustomDropDownWithT<T> extends StatelessWidget {
  final String? labelText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  const CustomDropDownWithT({
    Key? key,
    this.labelText,
    required this.items,
    this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        fillColor: GlobalColors.ButtonNavigation,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(
          labelText ?? "",
          style: GlobalStyles.titilliumBold(context),
          textScaleFactor: 1.5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          hint: const Text('Lựa chọn'),
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
