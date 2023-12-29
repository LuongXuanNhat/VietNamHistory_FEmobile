import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

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

class _LoginScreenState extends State<LoginScreen> with AfterLayoutMixin {
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formkey = GlobalKey<FormState>();
  bool isShowPass = false;
  bool isFormLogin = true;
  int current = 0;
  final CarouselController controller = CarouselController();
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
        (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    getLoginInput();
  }

  @override
  void dispose() {
    subscription.cancel();

    _txtEmail.dispose();
    _txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
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
                  message: 'Đăng nhập thành công!', type: SnackBarType.SUCCESS);
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
                        height: 50,
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
                          suffixIcon: GestureDetector(
                              onTap: () => _globalKey.currentContext!
                                  .read<LoginCubitCubit>()
                                  .showPass(!state.data!.showPass),
                              child: const Icon(Icons.remove_red_eye_outlined)),
                          isEnable: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),

                      const SizedBox(
                        height: 6.0,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: FractionallySizedBox(
                          widthFactor: 0.5,
                          child: TextButton(
                            onPressed: () {
                              navigator!
                                  .pushNamed(RouteGenerator.forgotPassScreen);
                            },
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
                        height: 100,
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
                                  .pushNamed(RouteGenerator.signupScreen),
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

  void getLoginInput() async {
    _txtEmail.text = await getIt<AppPref>().getUsernameInput();
    _txtPassword.text = await getIt<AppPref>().getPasswordInput();
  }

  showDialogBox() => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Không có kết nối mạng'),
          content: const Text('Vui lòng kiểm tra lại kết nối mạng của bạn'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected && isAlertSet == false) {
                  showDialogBox();
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('Thử lại'),
            ),
          ],
        ),
      );
}
