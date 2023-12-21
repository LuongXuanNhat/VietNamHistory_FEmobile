import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/global_colors.dart';
import 'cubit/edit_answer_cubit.dart';

class EditAnswerScreen extends StatefulWidget {
  final bool isSubAnswer;
  final String questionId;
  final String answerId;
  final String content;
  final String url;
  final String fullname;
  final String authorId;

  static BlocProvider<EditAnswerCubit> provider(
      {required String questionId,
      required String answerId,
      required String content,
      required bool isSubAnswer,
      required String url,
      required String fullname,
      required String authorId}) {
    return BlocProvider(
      create: (context) => EditAnswerCubit(),
      child: EditAnswerScreen(
          questionId: questionId,
          answerId: answerId,
          content: content,
          isSubAnswer: isSubAnswer,
          url: url,
          fullname: fullname,
          authorId: authorId),
    );
  }

  const EditAnswerScreen({
    super.key,
    required this.questionId,
    required this.answerId,
    required this.content,
    required this.url,
    required this.fullname,
    required this.authorId,
    required this.isSubAnswer,
  });

  @override
  State<EditAnswerScreen> createState() => _EditAnswerScreenState();
}

class _EditAnswerScreenState extends State<EditAnswerScreen> {
  final TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _contentController.text = widget.content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.isSubAnswer ? "Chỉnh sửa câu trả lời" : "Chỉnh sửa bình luận",
          style: const TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            widget.url,
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return const CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/avartar1.png'));
                            },
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      widget.fullname,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: TextField(
                                      controller: _contentController,
                                      maxLines: 1,
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      navigator!.pop();
                    },
                    child: const Text(
                      'Hủy',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                BlocBuilder<EditAnswerCubit, EditAnswerState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (widget.isSubAnswer == true) {
                            context.read<EditAnswerCubit>().updateSubAnswer(
                                id: widget.questionId,
                                preAnswerId: widget.answerId,
                                content: _contentController.text,
                                authorId: widget.authorId);
                          } else if (widget.isSubAnswer == false) {
                            context.read<EditAnswerCubit>().editAnswer(
                                questionId: widget.questionId,
                                authorId: widget.authorId,
                                answerId: widget.answerId,
                                content: _contentController.text);
                          }
                        },
                        child: const Text(
                          'Cập nhập',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
