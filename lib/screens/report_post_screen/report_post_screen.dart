import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/global_colors.dart';

import '../../models/post/discover/response/list_discover_response.dart';
import 'cubit/report_post_cubit.dart';

class ReportPortSCreen extends StatefulWidget {
  final ResultObj resultObj;
  static BlocProvider<ReportPostCubit> provider(
      {required ResultObj resultObj}) {
    return BlocProvider(
      create: (context) => ReportPostCubit(),
      child: ReportPortSCreen(
        resultObj: resultObj,
      ),
    );
  }

  const ReportPortSCreen({super.key, required this.resultObj});

  @override
  State<ReportPortSCreen> createState() => _ReportPortSCreenState();
}

class _ReportPortSCreenState extends State<ReportPortSCreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txttitle = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ReportPostCubit>().getListReport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Báo cáo bài viết",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: BlocBuilder<ReportPostCubit, ReportPostState>(
        builder: (context, state) {
          // if (state.data!.userReport != null) {
          //   if(state.data!.userReport!.postId == widget.resultObj.id.toString()){
          //     _txttitle.text = state.data!.userReport!.reportId.toString();
          //     _txtDescription.text = state.data!.userReport!.description.toString();
          //   }
          //   }

          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  if (state.data!.listReport != null)
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Colors.black54, width: 1.0)),
                      child: CustomDropdown(
                          hintText: 'Lựa chọn nội dung bạn muốn báo cáo',
                          controller: _txttitle,
                          items: state.data!.listReport!.resultObj!
                              .map((e) => e.title!)
                              .toList(),
                          onChanged: (value) {
                            _txttitle.text = value.toString();
                            _txtDescription.text = state
                                .data!.listReport!.resultObj!
                                .firstWhere((element) => element.title == value)
                                .description!;
                          }),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black54, width: 1.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 5),
                      child: TextField(
                        controller: _txtDescription,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        maxLines: 10,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 80, 78, 78),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          contentPadding: EdgeInsets.only(left: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      context.read<ReportPostCubit>().reportPost(
                          postId: widget.resultObj.id.toString(),
                          userId: widget.resultObj.userShort!.id.toString(),
                          reportId: state.data!.listReport!.resultObj!
                              .firstWhere(
                                  (element) => element.title == _txttitle.text)
                              .id!,
                          description: _txtDescription.text,
                          reportDate: DateTime.now(),
                          checked: false);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: GlobalColors.ButtonNavigation,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(
                            Icons.send_outlined,
                            color: GlobalColors.ButtonNavigation,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Gửi báo cáo',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              color: GlobalColors.ButtonNavigation,
                            ),
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
