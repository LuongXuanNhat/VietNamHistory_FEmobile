import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/global_styles.dart';
import '../../widgets/custom_textfield.dart';
import 'cubit/forgot_pass_cubit.dart';

class ResetPassScreen extends StatefulWidget {
  final String token;
  static BlocProvider<ForgotPassCubit> provider({required String token}) {
    return BlocProvider<ForgotPassCubit>(
      create: (_) => ForgotPassCubit(),
      child: ResetPassScreen(
        token: token,
      ),
    );
  }

  const ResetPassScreen({super.key, required this.token});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  height: 50,
                ),
                Text("Nhập mật khẩu mới",
                    style: GlobalStyles.primaryFont(context)),
                const SizedBox(
                  height: 92,
                ),

                ///Email
                CustomTextField(
                  hintLabel: 'Nhập email',
                  controller: _txtEmail,
                  prefixIcon: const Icon(Icons.email_outlined),
                  isEnable: true,
                ),

                ///Password
                const SizedBox(
                  height: 24.0,
                ),
                BlocBuilder<ForgotPassCubit, ForgotPassState>(
                  builder: (context, state) => CustomTextField(
                    hintLabel: 'Nhập mật khẩu',
                    controller: _txtPassword,
                    isShowPass: state.data.isShow,
                    isObscure: true,
                    onPressedObscure: () => _globalKey.currentContext!
                        .read<ForgotPassCubit>()
                        .showPass(!state.data.isShow),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                        onTap: () => _globalKey.currentContext!
                            .read<ForgotPassCubit>()
                            .showPass(!state.data.isShow),
                        child: const Icon(Icons.remove_red_eye_outlined)),
                    isEnable: true,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                BlocBuilder<ForgotPassCubit, ForgotPassState>(
                  builder: (context, state) => CustomTextField(
                    hintLabel: 'Nhập lại mật khẩu',
                    controller: _confirmPassword,
                    isShowPass: state.data.isShow,
                    isObscure: true,
                    onPressedObscure: () => _globalKey.currentContext!
                        .read<ForgotPassCubit>()
                        .showPass(!state.data.isShow),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                        onTap: () => _globalKey.currentContext!
                            .read<ForgotPassCubit>()
                            .showPass(!state.data.isShow),
                        child: const Icon(Icons.remove_red_eye_outlined)),
                    isEnable: true,
                  ),
                ),

                const SizedBox(
                  height: 24.0,
                ),
                BlocBuilder<ForgotPassCubit, ForgotPassState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        context.read<ForgotPassCubit>().resetPassword(
                            email: _txtEmail.text,
                            password: _txtPassword.text,
                            confirmPassword: _confirmPassword.text,
                            token: widget.token);
                      },
                      child: const Text("Xác nhận"),
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
    );
  }
}
