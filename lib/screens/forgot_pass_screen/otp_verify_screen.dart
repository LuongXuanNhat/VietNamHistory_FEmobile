import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../common/global_colors.dart';
import '../../common/ui_helpers.dart';
import 'cubit/forgot_pass_cubit.dart';

class OTPVerifyScreen extends StatefulWidget {
  final String otp;
  final String email;
  static BlocProvider<ForgotPassCubit> provider(
      {required String otp, required String email}) {
    return BlocProvider<ForgotPassCubit>(
      create: (_) => ForgotPassCubit(),
      child: OTPVerifyScreen(
        otp: otp,
        email: email,
      ),
    );
  }

  const OTPVerifyScreen({super.key, required this.otp, required this.email});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  String? otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Nhập mã OTP để xác thực tài khoản',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/message.png',
                width: MediaQuery.of(context).size.width * 0.5),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                setState(() {
                  otp = verificationCode;
                  log(otp!);
                });
              }, // end onSubmit
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<ForgotPassCubit, ForgotPassState>(
              builder: (context, state) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (otp == widget.otp) {
                        context
                            .read<ForgotPassCubit>()
                            .confirmEmail(email: widget.email);
                      } else {
                        UIHelpers.showSnackBar(message: 'Mã OTP không đúng');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.ButtonNavigation,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Xác nhận',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
