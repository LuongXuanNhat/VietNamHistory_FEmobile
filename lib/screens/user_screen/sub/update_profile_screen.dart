import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';
import '../../../models/user/response/user_response.dart';
import 'cubit/update_profile_cubit.dart';

class UpdateProfileScreen extends StatefulWidget {
  final User? userDetail;
  static BlocProvider<UpdateProfileCubit> provider({required User userDetail}) {
    return BlocProvider(
      create: (context) => UpdateProfileCubit(),
      child: UpdateProfileScreen(userDetail: userDetail),
    );
  }

  const UpdateProfileScreen({this.userDetail, super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen>
    with AfterLayoutMixin {
  // final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  final GlobalKey _globalKey = GlobalKey();
  final TextEditingController txtFullname = TextEditingController();
  final TextEditingController txtPhoneNumber = TextEditingController();
  final TextEditingController txtIntroduction = TextEditingController();
  final TextEditingController txtBirthDay = TextEditingController();

  final select = TextEditingController();
  final select1 = TextEditingController();
  String formattedDate = '';

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {}

  DateTime datetime = DateTime(2050, 2, 1, 10, 20);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    txtFullname.text = widget.userDetail?.fullname ?? '';
    txtPhoneNumber.text = widget.userDetail?.phoneNumber ?? '';
    txtIntroduction.text = widget.userDetail?.introduction ?? '';
    datetime = widget.userDetail?.dateOfBirth ?? DateTime(2050, 2, 1, 10, 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
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
      body: SingleChildScrollView(
        child: BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
          builder: (context, state) {
            return SafeArea(
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
                                    widget.userDetail?.fullname ?? 'fullname',
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
                                    widget.userDetail?.userName ?? 'username',
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
                                hintText: widget.userDetail?.phoneNumber ??
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
                            items: const ['Male', 'Female', 'Other'],
                            controller: select),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // SizedBox(
                      //   height: 36,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8),
                      //     child: InkWell(
                      //       onTap: () {
                      //         showDatePicker(
                      //           context: context,
                      //           initialDate: DateTime.now(),
                      //           firstDate: DateTime(2000),
                      //           lastDate: DateTime(2025),
                      //         ).then((value) => _globalKey.currentContext!
                      //             .read<UpdateProfileCubit>()
                      //             .setTransactionDate(value!));
                      //       },
                      //       child: Row(
                      //         children: [
                      //           const Icon(
                      //             Icons.calendar_month_outlined,
                      //             color: Colors.blue,
                      //           ),
                      //           const SizedBox(
                      //             width: 8,
                      //           ),
                      //           Text(
                      //             DateFormat('dd/MM/yyyy')
                      //                 .format(state.data!.transactionDate!),
                      //             style: const TextStyle(color: Colors.blue),
                      //           ),
                      //           const SizedBox(
                      //             width: 8,
                      //           ),
                      //           const Icon(Icons.arrow_drop_down,
                      //               color: Colors.blue)
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Text(
                        "Ngày sinh",
                        style: GlobalStyles.titleFont(context),
                      ),
                      CupertinoButton(
                          child: Container(
                            decoration: BoxDecoration(
                              color: GlobalColors.colorbackgroundTF,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                  "${datetime.day}/${datetime.month}/${datetime.year}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter',
                                  )),
                            ),
                          ),
                          onPressed: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) => SizedBox(
                                height: 250,
                                child: CupertinoDatePicker(
                                  backgroundColor: Colors.white,
                                  initialDateTime: datetime,
                                  onDateTimeChanged: (DateTime newTime) {
                                    setState(
                                      () {
                                        datetime = newTime;
                                      },
                                    );
                                  },
                                  mode: CupertinoDatePickerMode.date,
                                ),
                              ),
                            );
                          }),
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
                        scrollPadding: const EdgeInsets.all(20),
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
                        controller: txtIntroduction,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: SizedBox(
                            width: 335,
                            height: 44,
                            child: ElevatedButton(
                              onPressed: () async {
                                FocusManager.instance.primaryFocus?.unfocus();
                                _globalKey.currentContext!
                                    .read<UpdateProfileCubit>()
                                    .updateProfile(
                                        email: widget.userDetail?.email ?? '',
                                        fullname: txtFullname.text,
                                        dateOfBirth: datetime.toIso8601String(),
                                        gender: select.text == 'Other'
                                            ? 3
                                            : select.text == 'Male'
                                                ? 0
                                                : 2,
                                        phoneNumber: txtPhoneNumber.text,
                                        introduction: txtIntroduction.text);
                              },
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
            );
          },
        ),
      ),
    );
  }
}
