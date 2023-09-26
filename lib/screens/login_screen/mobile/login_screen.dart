import 'package:flutter/material.dart';

import 'package:vietnamhistory_app/common/storage/global_styles.dart';
import 'package:vietnamhistory_app/route_generator.dart';
import 'package:vietnamhistory_app/widgets/custom_textfield.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
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
                  Text("Đăng nhập", style: GlobalStyles.primaryFont(context)),
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
                    isObscure: true,
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

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () =>
                        navigator!.pushNamed(RouteGenerator.mainScreen),
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
    );
  }
}
