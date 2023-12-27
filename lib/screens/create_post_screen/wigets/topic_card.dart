import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VariantionItem {
  String? title;
  String? id;
  Widget? widget;

  VariantionItem({this.title, this.id, this.widget});
}

class VariantionCard extends StatelessWidget {
  final Widget widget;
  final String? title;
  final String? id;
  const VariantionCard({
    super.key,
    required this.widget,
    this.title,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          )),
      child: Stack(
        children: [
          Text(title ?? ""),
        ],
      ),
    );
  }
}
