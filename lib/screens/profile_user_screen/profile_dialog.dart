import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDialog extends StatelessWidget {
  final String fullname;
  final String urlImage;
  const ProfileDialog(
      {super.key, required this.fullname, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
          width: navigator!.context.width * 2,
          height: navigator!.context.height / 3,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 40,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x2B005FB7),
                blurRadius: 20,
                offset: Offset(0, 10),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 101.31,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(urlImage),
                    fit: BoxFit.fill,
                  ),
                  shape: const OvalBorder(
                    side: BorderSide(
                      width: 5,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      fullname,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // SizedBox(
                    //   width: 344.43,
                    //   child: Text(
                    //     'Has maiorum habemus detraxit at. Timeam fabulas splendide et his.Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur.',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       color: Color(0xFF404040),
                    //       fontSize: 12,
                    //       fontFamily: 'Roboto',
                    //       fontWeight: FontWeight.w400,
                    //       height: 0,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ));
  }
}
