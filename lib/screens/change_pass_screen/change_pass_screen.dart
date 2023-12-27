import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/global_colors.dart';
import '../../widgets/custom_textfield.dart';
import 'cubit/change_pass_cubit.dart';

class ChangePasswordScreen extends StatefulWidget {
  final String? email;
  static BlocProvider<ChangePassCubit> provider({required String email}) {
    return BlocProvider(
      create: (context) => ChangePassCubit(),
      child: ChangePasswordScreen(email: email),
    );
  }

  const ChangePasswordScreen({
    Key? key,
    this.email,
  }) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen>
    with AfterLayoutMixin {
  final TextEditingController _txtCurrentPass = TextEditingController();
  final TextEditingController _txtNewPass = TextEditingController();
  final TextEditingController _txtConfirmPass = TextEditingController();
  bool isShowCurrentPass = false;
  bool isShowNewPass = false;
  bool isShowConfirmPass = false;
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  void dispose() {
    _txtCurrentPass.dispose();
    _txtNewPass.dispose();
    _txtConfirmPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Thay đổi mật khẩu",
          style: TextStyle(
            fontFamily: 'Epilogue',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  CustomTextField(
                    controller: _txtCurrentPass,
                    hintLabel: 'Mật khẩu hiện tại',
                    isObscure: false,
                    isShowPass: isShowCurrentPass,
                    onPressedObscure: () {
                      setState(() {
                        isShowCurrentPass = !isShowCurrentPass;
                      });
                    },
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Mật khẩu hiện tại không được để trống';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _txtNewPass,
                    hintLabel: 'Mật khẩu mới',
                    isObscure: true,
                    isShowPass: isShowNewPass,
                    onPressedObscure: () {
                      setState(() {
                        isShowNewPass = !isShowNewPass;
                      });
                    },
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Mật khẩu mới không được để trống';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _txtConfirmPass,
                    hintLabel: 'Mật khẩu xác nhận',
                    isObscure: true,
                    isShowPass: isShowConfirmPass,
                    onPressedObscure: () {
                      setState(() {
                        isShowConfirmPass = !isShowConfirmPass;
                      });
                    },
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Mật khẩu xác nhận không được để trống';
                      }
                      // ignore: no_leading_underscores_for_local_identifiers
                      final _newPassword = _txtNewPass.text.trim();
                      if (_newPassword != value?.trim()) {
                        return 'Mật khẩu xác nhận không khớp';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                        height: 44, width: double.infinity),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _globalKey.currentContext!
                              .read<ChangePassCubit>()
                              .changePassword(
                                  email: widget.email,
                                  newPassword: _txtNewPass.text,
                                  currentPassword: _txtCurrentPass.text);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.ButtonNavigation),
                      child: Text(
                        'Lưu'.toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
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
