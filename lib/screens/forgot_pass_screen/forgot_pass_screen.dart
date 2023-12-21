import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';
import '../../common/global_styles.dart';
import '../../route_generator.dart';
import '../../widgets/custom_textfield.dart';
import 'cubit/forgot_pass_cubit.dart';

class ForgotPassScreen extends StatefulWidget {
  static BlocProvider<ForgotPassCubit> provider() {
    return BlocProvider<ForgotPassCubit>(
      create: (_) => ForgotPassCubit(),
      child: const ForgotPassScreen(),
    );
  }

  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  final TextEditingController _txtEmail = TextEditingController();

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Text("Quên mật khẩu",
                      style: GlobalStyles.primaryFont(context)),
                  const SizedBox(
                    height: 92,
                  ),

                  ///Email
                  CustomTextField(
                    hintLabel: 'Nhập email mà bạn đã đăng ký',
                    controller: _txtEmail,
                    prefixIcon: const Icon(Icons.email_outlined),
                    isEnable: true,
                  ),

                  ///Password
                  const SizedBox(
                    height: 24.0,
                  ),
                  BlocBuilder<ForgotPassCubit, ForgotPassState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              context.read<ForgotPassCubit>().sendEmail(
                                    email: _txtEmail.text,
                                  );
                            },
                            child: const Text("Xác nhận"),
                          ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(
                    height: 57,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
