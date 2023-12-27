import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/global_colors.dart';
import 'cubit/create_question_cubit.dart';

class CreateQuestionScreen extends StatefulWidget {
  static BlocProvider<CreateQuestionCubit> provider() {
    return BlocProvider<CreateQuestionCubit>(
      create: (context) => CreateQuestionCubit(),
      child: const CreateQuestionScreen(),
    );
  }

  const CreateQuestionScreen({super.key});

  @override
  State<CreateQuestionScreen> createState() => _CreateQuestionScrennState();
}

class _CreateQuestionScrennState extends State<CreateQuestionScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  final TextEditingController _txthashTag = TextEditingController();
  final List<String> _hashtag = [];
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<CreateQuestionCubit>().loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Builder(
                  builder: (context) => Container(
                      decoration: BoxDecoration(
                        color: GlobalColors.colorButton1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: () {
                          context.read<CreateQuestionCubit>().createQuestion(
                              title: titleController.text,
                              content: contentController.text,
                              tags: _hashtag);
                        },
                        child: const Text(
                          'Đăng',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              color: Colors.white),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),

        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Tạo câu hỏi",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),

        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      key: _scaffoldKey,
      body: BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        state.data.image,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/avartar1.png'),
                          );
                        },
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      state.data.fullName,
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          letterSpacing: 1),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      maxLines: 2,
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Nhập tiêu đề câu hỏi...',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: const EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      maxLines: 10,
                      controller: contentController,
                      decoration: InputDecoration(
                        hintText: 'Viết nội dung câu hỏi bạn cần hỏi...',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Thêm hashtag cho bài viết',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black45, width: 0.5)),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Thêm Hastag cho bài viết'),
                                content: TextField(
                                  controller: _txthashTag,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    labelText: 'Hastag',
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _txthashTag.clear();
                                      },
                                      icon: const Icon(Icons.clear),
                                    ),
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('Đóng'),
                                    onPressed: () {
                                      navigator!.pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Thêm'),
                                    onPressed: () {
                                      setState(() {
                                        _hashtag.add(_txthashTag.text);
                                        _txthashTag.clear();
                                        navigator!.pop();
                                      });
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.hashtag,
                              size: 30,
                              color: GlobalColors.ButtonNavigation,
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            const Text(
                              'Hashtag',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  runSpacing: 5,
                  children: List.generate(
                      _hashtag.length, (index) => _buildHashtag(index)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHashtag(index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black45, width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Text(_hashtag[index]),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _hashtag.removeAt(index);
              });
            },
            child: const Icon(
              Icons.close_rounded,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
