import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../common/global_styles.dart';
import '../../common/ui_helpers.dart';
import '../../route_generator.dart';
import '../../widgets/custom_textfield.dart';
import 'cubit/signup_cubit.dart';

class SignUpScreen extends StatefulWidget {
  ///MARK: Initials;
  static BlocProvider<SignupCubit> provider() {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: const SignUpScreen(),
    );
  }

  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final TextEditingController _txtConfirmPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formkey = GlobalKey<FormState>();
  bool isShowPass = false;
  bool isFormLogin = true;
  int current = 0;
  final CarouselController controller = CarouselController();
  // @override
  // FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  void dispose() {
    _txtEmail.dispose();
    _txtPassword.dispose();
    _txtConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Email') ||
              state.data!.error.contains('Password')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else {
            if (state.data!.error.contains('Success')) {
              _txtEmail.text = '';
              _txtPassword.text = '';
              _txtConfirmPassword.text = '';
            }
          }
        }
      },
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          leading: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
                    Text("Đăng ký tài khoản",
                        style: GlobalStyles.primaryFont(context)),
                    const SizedBox(
                      height: 92,
                    ),

                    ///Email
                    CustomTextField(
                      hintLabel: 'Nhập email của bạn',
                      controller: _txtEmail,
                      prefixIcon: const Icon(Icons.email_outlined),
                      isEnable: true,
                    ),

                    ///Password
                    const SizedBox(
                      height: 24.0,
                    ),
                    CustomTextField(
                      hintLabel: 'Nhập mật khẩu của bạn',
                      controller: _txtPassword,
                      isShowPass: false,
                      isObscure: true,
                      onPressedObscure: () {},
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      isEnable: true,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    CustomTextField(
                      hintLabel: 'Nhập lại mật khẩu của bạn',
                      controller: _txtConfirmPassword,
                      isShowPass: false,
                      isObscure: true,
                      onPressedObscure: () {},
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      isEnable: true,
                    ),

                    const SizedBox(
                      height: 6.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 244),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Quên mật khẩu",
                        ),
                      ),
                    ),

                    BlocBuilder<SignupCubit, SignupState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            final email = _txtEmail.text.trim();
                            final password = _txtPassword.text.trim();
                            final confirmPass = _txtConfirmPassword.text.trim();
                            _globalKey.currentContext!
                                .read<SignupCubit>()
                                .register(
                                    email: email,
                                    password: password,
                                    confirmPassword: confirmPass);
                          },
                          child: const Text("Tiếp tục"),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 57,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 144,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Text("hoặc"),
                        const SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 1,
                          width: 144,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset('assets/images/google.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 45,
                            height: 45,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset('assets/images/telephone.png'),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Bạn đã có tài khoản',
                          style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                            onPressed: () => navigator!
                                .pushNamed(RouteGenerator.registerScreen),
                            child: const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
