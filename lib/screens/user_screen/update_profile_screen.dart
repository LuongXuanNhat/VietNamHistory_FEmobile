import 'dart:async';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../common/global_colors.dart';
import '../../common/global_styles.dart';
import 'cubit/profile_cubit.dart';

class UpdateProfileScreen extends StatefulWidget {
  static BlocProvider<ProfileCubit> provider() {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: const UpdateProfileScreen(),
    );
  }

  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  final TextEditingController txtFullname = TextEditingController();
  final TextEditingController txtPhoneNumber = TextEditingController();
  final select = TextEditingController();
  final select1 = TextEditingController();
  final introdution = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ProfileCubit>().getProfile();
  }

  DateTime selectedDate = DateTime.now();

  void _showDatePicker(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2101))
        .then((value) {
      if (value != null && value != selectedDate) {
        setState(() {
          selectedDate = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy/MM/dd').format(selectedDate);

    return Scaffold(
      key: globalKey,
      backgroundColor: GlobalColors.colorDefault,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Cập nhập thông tin',
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
          dynamic datetime = state.data!.userResponse?.data!.dateOfBirth;
          String imagePath = state.data!.userResponse?.data!.image ?? '';
          FileImage? image;
          if (imagePath.isNotEmpty) {
            image = FileImage(File(imagePath));
          } else {
            image = null;
          }
          //     FileImage? fileImage = FileImage(File(imagePath));
          if (datetime != null) {
            DateTime date = DateTime.parse(datetime);

            formattedDate = DateFormat('yyyy-MM-dd').format(date);
          }
          return SingleChildScrollView(
            child: SafeArea(
              child: Form(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Họ và tên",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: GlobalColors.colorbackgroundTF,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: TextFormField(
                            controller: txtFullname,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Vui lòng nhập họ và tên';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText:
                                    state.data!.userResponse?.data!.fullname ??
                                        'fullname',
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Tên tài khoản",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: GlobalColors.colorbackgroundTF,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: TextField(
                            decoration: InputDecoration(
                                enabled: false,
                                hintText:
                                    state.data!.userResponse?.data!.username ??
                                        'username',
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Thêm số điện thoại",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: GlobalColors.colorbackgroundTF,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: TextFormField(
                            controller: txtPhoneNumber,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Vui lòng nhập số điện thoại';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: state.data!.userResponse?.data!
                                        .phoneNumber ??
                                    '0xxxxxxxxx',
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Giới tính",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 36,
                        child: CustomDropdown(
                            borderRadius: BorderRadius.circular(4),
                            fillColor: GlobalColors.colorbackgroundTF,
                            hintText: '-- Chọn giới tính --',
                            hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter'),
                            selectedStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                            items: const ['Nam', 'Nữ', 'Khác'],
                            controller: select),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Học sinh trường",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 36,
                        child: CustomDropdown(
                            borderRadius: BorderRadius.circular(4),
                            fillColor: GlobalColors.colorbackgroundTF,
                            hintText: '-- Chọn trường --',
                            hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter'),
                            selectedStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                            items: const [
                              'Cao Ba Quat',
                              'Nguyen Hue',
                              'Nguyen Trai'
                            ],
                            controller: select1),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ngày sinh",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: GlobalColors.colorbackgroundTF,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: MaterialButton(
                          onPressed: () => _showDatePicker(context),
                          child: Text(
                            formattedDate,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Giới thiệu",
                        style: GlobalStyles.titleFont(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Giới thiệu về bản thân',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter'),
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              color: GlobalColors.colorbackgroundTF,
                            ),
                          ),
                        ),
                        controller: introdution,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: SizedBox(
                            width: 335,
                            height: 44,
                            child: ElevatedButton(
                              onPressed: () => globalKey.currentContext!
                                  .read<ProfileCubit>()
                                  .updateProfile(
                                    email:
                                        state.data!.userResponse?.data!.email,
                                    fullname: txtFullname.text,
                                    dateOfBirth: formattedDate,
                                    gender: select.text == 'Nam'
                                        ? '1'
                                        : select.text == 'Nữ'
                                            ? '2'
                                            : '3',
                                    phoneNumber: txtPhoneNumber.text,
                                    image: image,
                                  ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: GlobalColors.ButtonNavigation,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              child: const Text(
                                'Cập nhập thông tin',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
