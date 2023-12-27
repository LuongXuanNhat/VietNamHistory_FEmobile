import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dialogs {
  static final Dialogs _singleton = Dialogs._internal();
  factory Dialogs() {
    return _singleton;
  }
  Dialogs._internal();
  static Future<bool> quizEndDialog() async {
    return (await showDialog(
          context: Get.overlayContext!,
          builder: (context) => AlertDialog(
            title: const Text('Thông báo!!!'),
            content: const Text(
                'Bạn có muốn thoát khỏi bài kiểm tra mà không hoàn thành nó không ?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Get.back(result: false),
                child: const Text('Không'),
              ),
              TextButton(
                onPressed: () => Get.back(result: true),
                child: const Text('Có'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
