import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../common/global_styles.dart';
import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../route_generator.dart';
import '../../../widgets/custom_textfield.dart';
import 'package:get/get.dart';

import '../cubit/login_cubit_cubit.dart';

class LoginScreen extends StatefulWidget {
  static BlocProvider<LoginCubitCubit> provider() {
    return BlocProvider(
      create: (context) => LoginCubitCubit(),
      child: const LoginScreen(),
    );
  }

  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formkey = GlobalKey<FormState>();
  bool isShowPass = false;
  bool isFormLogin = true;
  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  void dispose() {
    _txtEmail.dispose();
    _txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
    // var size = MediaQuery.of(context).size;
    return BlocListener<LoginCubitCubit, LoginCubitState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error!.contains('Email') ||
              state.data!.error!.contains('Password')) {
            UIHelpers.showSnackBar(
                message: state.data!.error!, type: SnackBarType.ERROR);
          } else {
            if (state.data!.error!.contains('Success')) {
              navigator!.pushNamedAndRemoveUntil(
                  RouteGenerator.mainScreen,
                  arguments: {
                    'currentIndex': 0,
                  },
                  (route) => false);
              UIHelpers.showSnackBar(
                  message: 'Đăng nhập thành công!', type: SnackBarType.ERROR);
            } else {
              UIHelpers.showSnackBar(
                  message: state.data!.error!, type: SnackBarType.ERROR);
            }
          }
        }
      },
      child: WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime ?? now) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;
            Fluttertoast.showToast(msg: "Exit_warning");
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: Scaffold(
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
                      Text("Đăng nhập",
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
                      BlocBuilder<LoginCubitCubit, LoginCubitState>(
                        builder: (context, state) => CustomTextField(
                          hintLabel: 'Nhập mật khẩu',
                          controller: _txtPassword,
                          isShowPass: state.data!.showPass,
                          isObscure: true,
                          onPressedObscure: () => _globalKey.currentContext!
                              .read<LoginCubitCubit>()
                              .showPass(!state.data!.showPass),
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                          isEnable: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: FractionallySizedBox(
                          widthFactor: 0.5,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Quên mật khẩu",
                            ),
                          ),
                        ),
                      ),

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
                          await getIt<AppPref>().saveLoginInput(
                              username: _txtEmail.text,
                              password: _txtPassword.text);
                          _globalKey.currentContext!
                              .read<LoginCubitCubit>()
                              .login(
                                  email: _txtEmail.text,
                                  password: _txtPassword.text);
                        },
                        child: const Text("Đăng nhập"),
                      ),
                      const SizedBox(
                        height: 57,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 120,
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
                            width: 120,
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
                        height: 65,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Bạn chưa có tài khoản',
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                              onPressed: () => navigator!
                                  .pushNamed(RouteGenerator.registerScreen),
                              child: const Text(
                                'Đăng ký',
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
      ),
    );
  }
}
