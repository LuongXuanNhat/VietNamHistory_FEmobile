import 'package:flutter/material.dart';
import '../../common/global_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../route_generator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 50),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3))
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Bắt đầu thôi",
                          style: GlobalStyles.primaryFont(context),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.rocket_launch_outlined,
                          color: Colors.redAccent,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Đăng ký tài khoản",
                        style: GlobalStyles.primaryFont1(context),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 110,
                    height: 110,
                  ),
                  Text(
                    "Người kể sử",
                    style: GlobalStyles.primaryFont(context),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Dân ta phải biết sử ta",
                    style: GlobalStyles.primaryFont2(context),
                  ),
                  Text(
                    "Cho tường gốc tích, nước nhà Việt Nam",
                    style: GlobalStyles.primaryFont2(context),
                  ),
                  const SizedBox(
                    height: 47,
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
                        navigator!.pushNamed(RouteGenerator.signupScreen),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Đăng ký với email",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.red),
                      ),
                      elevation: 0.0,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Đăng ký với Google",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Bằng cách tiếp tục, bạn đồng ý với chúng tôi",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text("Điều khoản & Điều kiện và Chính sách bảo mật"),
                  SizedBox(
                    height: navigator!.context.height * 0.1,
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
                          onPressed: () =>
                              navigator!.pushNamed(RouteGenerator.loginScreen),
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
    );
  }
}
