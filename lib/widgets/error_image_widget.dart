import 'package:flutter/material.dart';

class ErrorWidgetImage extends StatefulWidget {
  const ErrorWidgetImage({super.key});

  @override
  State<ErrorWidgetImage> createState() => _ErrorWidgetImageState();
}

class _ErrorWidgetImageState extends State<ErrorWidgetImage> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/avartar1.png'),
      fit: BoxFit.cover,
    );
  }
}
