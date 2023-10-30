import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dimension.dart';

enum SnackBarType { SUCCESS, ERROR, WARNING }

class UIHelpers {
  static void showLoading({String message = 'loading'}) {
    ProgressHud.showLoading(text: message);
  }

  //Dimiss Loading
  static void dismissLoading() {
    Future.delayed(const Duration(microseconds: 500), () {
      ProgressHud.dismiss();
    });
  }

  // SHow Snack Bar
  static Future<void> showSnackBar({
    String title = 'alert',
    String message = "",
    SnackBarType type = SnackBarType.SUCCESS,
  }) async {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
    Color? bgColor;
    if (type == SnackBarType.SUCCESS) {
      bgColor = Colors.white;
    } else if (type == SnackBarType.ERROR) {
      bgColor == Colors.red;
    } else if (type == SnackBarType.WARNING) {
      bgColor == Colors.orange;
    }
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      content: Text(
        message,
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  static Future<void> showSnackBarContext(
      {required BuildContext context,
      String title = 'alert',
      String message = '',
      SnackBarType type = SnackBarType.SUCCESS}) async {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    Color? bgColor;
    if (type == SnackBarType.SUCCESS) {
      bgColor = Colors.green;
    } else if (type == SnackBarType.ERROR) {
      bgColor = Colors.red;
    } else {
      bgColor = Colors.orange;
    }
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      content: Text(message),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Material Dialog
  static void showMaterialDialog({
    required BuildContext context,
    String title = 'alert',
    String message = '',
    bool isShowClose = false,
    String titleColse = 'cancel',
    bool isShowConfirm = true,
    String titleConfirm = '',
    VoidCallback? onComfirm,
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            title: Center(
              child: Text(title),
            ),
            content: Text(message),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (isShowClose)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        side: const BorderSide(
                            width: Dimension.BORDER_DEFAULT,
                            color: Colors.grey),
                        minimumSize: const Size(120, 45),
                      ),
                      onPressed: () {},
                      child: Text(titleColse),
                    ),
                  if (isShowConfirm)
                    ElevatedButton(
                      onPressed: onComfirm,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        minimumSize: const Size(120, 45),
                      ),
                      child: Text(titleConfirm),
                    ),
                ],
              ),
            ],
          );
        });
  }
}
