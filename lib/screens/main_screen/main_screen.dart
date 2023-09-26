import 'package:flutter/material.dart';
import '../../common/storage/global_colors.dart';
import '../../common/storage/global_styles.dart';

import '../../widgets/bottom_navigation.dart';
import '../../widgets/carouse.dart';
import '../../widgets/custom_textfield.dart';

import '../../widgets/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  final TextEditingController? txtSearch;
  const MainScreen({
    Key? key,
    this.txtSearch,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const Header(),
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: GestureDetector(
                  onTap: () {},
                  child: CustomTextField(
                    isEnable: true,
                    hintLabel: "Tìm bất cứ điều gì",
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(10),
                      child: const FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CarouseClass(),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: GlobalColors.Categories,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/khampha.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Khám phá",
                              style: GlobalStyles.titilliumBold(context),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 40);
                    },
                    itemCount: 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Khóa học",
                      style: TextStyle(
                          fontFamily: "Epilogue",
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Xem thêm",
                        style: TextStyle(
                            color: GlobalColors.ButtonNavigation,
                            fontFamily: "Inter",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              SizedBox(
                height: 270,
                width: 430,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: GlobalColors.border_color, width: 1.0)),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4)),
                                child: Image.asset(
                                  "assets/images/history/history1.png",
                                  height: 150,
                                  width: 271,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '(120)',
                                      style: TextStyle(
                                        fontFamily: "Mulish",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Lịch sử Việt Nam (giai đoạn 1945 - 1954)",
                                  style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 42,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9.0),
                                child: Row(
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.userCheck,
                                      color: Colors.black38,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Lương Xuân Văn Tài",
                                      style: TextStyle(
                                          color: GlobalColors.TextHint,
                                          fontFamily: "Mulish",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: 2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Luyện tập",
                      style: TextStyle(
                          fontFamily: "Epilogue",
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Xem thêm",
                      style: TextStyle(
                          color: GlobalColors.ButtonNavigation,
                          fontFamily: "Inter",
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 154,
                width: 430,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: GlobalColors.background1,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/document.png",
                                    width: 54,
                                    height: 54,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "12 câu - 30'",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "89 lượt làm bài",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Text(
                                        "TN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Mulish",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                "Trắc nghiệm Hội nghị\nIantan",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: "Epilogue",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 30, top: 7),
                                child: Row(
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.userCheck,
                                      color: Colors.black38,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Lương Xuân Văn Tài",
                                      style: TextStyle(
                                          color: GlobalColors.TextHint,
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 17,
                      );
                    },
                    itemCount: 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Luyện tập",
                      style: TextStyle(
                          fontFamily: "Epilogue",
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Xem thêm",
                      style: TextStyle(
                          color: GlobalColors.ButtonNavigation,
                          fontFamily: "Inter",
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 230,
                width: 430,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: GlobalColors.border_color),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  topRight: Radius.circular(4)),
                              child: Image.asset(
                                "assets/images/cuocthi.png",
                                width: 274,
                                height: 121,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Tự hào Việt Nam (Lần thứ III, 2019-2020)",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.graduationCap,
                                    size: 20,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Trường THCS Lê Quý Đôn - ( Eakar, Đăk Lăk )",
                                    style: TextStyle(
                                        fontFamily: "Mulish",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.clock,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Thời gian đăng ký: 01/08/2019 - 31/08/2019",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.userCheck,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Lương Nguyễn Văn Tài",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 11,
                      );
                    },
                    itemCount: 4),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
