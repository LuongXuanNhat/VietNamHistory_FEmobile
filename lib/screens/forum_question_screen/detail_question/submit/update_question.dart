import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../common/global_colors.dart';
import '../../../../models/question/response/questionresponse.dart';
import '../cubit/detail_question_cubit.dart';

class UpdateQuestionScreen extends StatefulWidget {
  final QuestionResponse data;
  static BlocProvider<DetailQuestionCubit> provider(
      {required QuestionResponse data}) {
    return BlocProvider<DetailQuestionCubit>(
      create: (context) => DetailQuestionCubit(),
      child: UpdateQuestionScreen(
        data: data,
      ),
    );
  }

  const UpdateQuestionScreen({super.key, required this.data});

  @override
  State<UpdateQuestionScreen> createState() => _UpdateQuestionScreenState();
}

class _UpdateQuestionScreenState extends State<UpdateQuestionScreen> {
  final TextEditingController _titletxt = TextEditingController();
  final TextEditingController _contenttxt = TextEditingController();
  final _hashtagtxt = TextEditingController();
  final _hashtag = <String>[];

  @override
  void initState() {
    super.initState();
    _titletxt.text = widget.data.resultObj.title;
    _contenttxt.text = widget.data.resultObj.content;
    _hashtag.addAll(widget.data.resultObj.tags.map((e) => e.name!));
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
                      child:
                          BlocBuilder<DetailQuestionCubit, DetailQuestionState>(
                        builder: (context, state) {
                          return TextButton(
                            onPressed: () {
                              List<String> tags = [];
                              for (var i = 0; i < _hashtag.length; i++) {
                                Tag tag = Tag(name: _hashtag[i]);
                                tags.add(tag.name.toString());
                              }
                              context.read<DetailQuestionCubit>().updateAnswer(
                                  id: widget.data.resultObj.id,
                                  title: _titletxt.text,
                                  content: _contenttxt.text,
                                  tag: tags);
                            },
                            child: const Text(
                              'Lưu',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                  color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ),
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
            "Chỉnh sửa câu hỏi",
            style: TextStyle(
                fontFamily: "Epilogue",
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          iconTheme: IconThemeData(color: GlobalColors.colorBack),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tiêu đề câu hỏi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black54, width: 1.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: TextField(
                      controller: _titletxt,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                      maxLength: 100,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tiêu đề không quá 100 kí tự.",
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
                  height: 10,
                ),
                const Text(
                  'Nội dung câu hỏi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black54, width: 1.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: TextField(
                      controller: _contenttxt,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      maxLines: 8,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Bạn đang nghĩ gì?",
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
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black45, width: 0.5)),
                  child: GestureDetector(
                    onTap: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Thêm Hastag cho câu hỏi'),
                              content: TextField(
                                controller: _hashtagtxt,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: 'Hastag',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      _hashtagtxt.clear();
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
                                      _hashtag.add(_hashtagtxt.text);
                                      _hashtagtxt.clear();
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
                const SizedBox(height: 10),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  runSpacing: 5,
                  children: List.generate(
                      _hashtag.length, (index) => _buildHashtag(index)),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
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
