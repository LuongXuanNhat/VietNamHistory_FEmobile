import 'dart:async';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart ';

import '../../common/global_colors.dart';
import '../../enums/gender.dart';
import '../../route_generator.dart';
import '../../widgets/error_image_widget.dart';
import 'cubit/profile_cubit.dart';

class AccountSettingsScreen extends StatefulWidget {
  static BlocProvider<ProfileCubit> provider() {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: const AccountSettingsScreen(),
    );
  }

  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final TextEditingController introduction = TextEditingController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ProfileCubit>().getProfile();
    context.read<ProfileCubit>().getImage();
  }

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width / 1.1;
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Thông tin cá nhân",
          style: TextStyle(
            fontFamily: 'Epilogue',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          int? genderValue = state.data!.userResponse?.data!.gender;
          String url = state.data!.urlImage ?? '';

          Gender gender;
          if (genderValue == 0) {
            gender = Gender.Male;
          } else if (genderValue == 1) {
            gender = Gender.Female;
          } else {
            gender = Gender.Other;
          }

          introduction.text = state.data!.userResponse?.data!.introduction ??
              "Chưa có giới thiệu";

          return SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/background.png",
                    width: MediaQuery.of(context).size.width,
                    height: 85,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width1, top: 12, right: 8),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(221, 131, 129, 129),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Color.fromARGB(221, 255, 255, 255),
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                if (url.contains('""') &&
                                    state.data!.image == null)
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(45)),
                                      child: Image.asset(
                                        "assets/images/avatar.png",
                                        height: 300,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  bottom: -5,
                                  right: -10,
                                  child: IconButton(
                                    onPressed: () {
                                      _showBottomSheet();
                                    },
                                    icon: Icon(Icons.add_a_photo_rounded,
                                        color: GlobalColors.ButtonNavigation),
                                  ),
                                ),
                                if (state.data!.image != null &&
                                    state.data!.urlImage == null)
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(45)),
                                      child: Image.file(
                                        state.data!.image ?? File(''),
                                        height: 300,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  bottom: -5,
                                  right: -10,
                                  child: IconButton(
                                    onPressed: () {
                                      _showBottomSheet();
                                    },
                                    icon: Icon(Icons.add_a_photo_rounded,
                                        color: GlobalColors.ButtonNavigation),
                                  ),
                                ),
                                if (!url.contains('"') && !url.contains('"'))
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(45)),
                                      child: CachedNetworkImage(
                                        imageUrl: url.replaceAll('"', ''),
                                        errorWidget: (context, url, error) =>
                                            const ErrorWidgetImage(),
                                        height: 300,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 25,
                                left: width1 / 5,
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    "Cập nhập thông tin",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 121, 115, 115),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      navigator!.pushNamed(
                                          RouteGenerator.updateProfileScreen,
                                          arguments: {
                                            'UserDetail':
                                                state.data!.userResponse!.data
                                          });
                                    },
                                    icon: const Icon(
                                      Icons.edit_outlined,
                                      size: 16,
                                      color: Color.fromARGB(255, 121, 115, 115),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7, left: 15),
                          child: Text(
                            state.data!.userResponse?.data!.fullname ??
                                'No Name',
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7, left: 15),
                          child: const Text(
                            "Top 5% những người đóng góp nhiều cho hệ thống",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 7,
                          ),
                          child: Text(
                            "Giới thiệu",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 14, top: 7),
                          height: 100,
                          width: 256,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(221, 238, 235, 235),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: TextField(
                              controller: introduction,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 80, 78, 78),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              maxLength: 300,
                              maxLines: 4,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Nhập giới thiệu của bạn",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 80, 78, 78),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400),
                                contentPadding: EdgeInsets.only(left: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.border_color_outlined,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '223 bài viết',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                gender.toString().split('.').last,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_outlined,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                state.data!.userResponse?.data!.dateOfBirth ??
                                    'Chưa cập nhập',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.phone_android_outlined,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                state.data!.userResponse?.data!.phoneNumber ??
                                    'Chưa cập nhập',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2k lượt thích',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.view_comfy_outlined,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '223k lượt xem',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.class_outlined,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '3 lớp học',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 8),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.personChalkboard,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '3 khoá học',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.doc_plaintext,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '13 tài liệu',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7, top: 10),
                          child: Text(
                            'Trường hợp khi bạn thêm số điện thoại hoặc email (yêu cầu đã xác thực) bạn có thể chọn 1 trong 2 cách để thực hiện đăng nhập.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mulish'),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Email',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Inter'),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: const Color.fromARGB(
                                        115, 234, 232, 232),
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: state.data!.userResponse
                                                ?.data!.email ??
                                            '',
                                        hintStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 80, 78, 78),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400),
                                        contentPadding:
                                            const EdgeInsets.only(left: 15),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Cập Nhập',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, top: 20),
                            child: SizedBox(
                              width: 335,
                              height: 44,
                              child: ElevatedButton(
                                onPressed: () {
                                  navigator!.pushNamed(
                                      RouteGenerator.changePassScreen,
                                      arguments: {
                                        'Email': state
                                            .data!.userResponse?.data!.email
                                      });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      GlobalColors.ButtonNavigation,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: const Text(
                                  'Đổi mật khẩu',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                            ),
                            child: SizedBox(
                              width: 335,
                              height: 44,
                              child: ElevatedButton(
                                onPressed: () => _globalKey.currentContext!
                                    .read<ProfileCubit>()
                                    .logout(),
                                style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 171, 169, 169),
                                      width: 2),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: const Text(
                                  'Đăng xuất',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 171, 169, 169),
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      builder: (_) {
        return ListView(
          shrinkWrap: true,
          padding:
              EdgeInsets.only(top: Get.height * .03, bottom: Get.height * .05),
          children: [
            const Text(
              'Chọn ảnh từ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      fixedSize: Size(Get.width * .3, Get.height * .15)),
                  onPressed: () async {
                    await context
                        .read<ProfileCubit>()
                        .selectImage(ImageSource.gallery);
                    await context.read<ProfileCubit>().updateAvatar();
                  },
                  child: Image.asset('assets/images/add_image.png'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      fixedSize: Size(Get.width * .3, Get.height * .15)),
                  onPressed: () async {
                    await context
                        .read<ProfileCubit>()
                        .selectImage(ImageSource.camera);
                    await context.read<ProfileCubit>().updateAvatar();
                  },
                  child: Image.asset('assets/images/camera.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}