import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../common/global_colors.dart';
import '../../../../../models/user/user_pres.dart';
import 'cubit/edit_comment_cubit.dart';

class EditCommentScreen extends StatefulWidget {
  final String id;
  final String postId;
  final String content;
  final String url;
  final String fullname;
  static BlocProvider<EditCommentCubit> provider(
      {required String id,
      required String postId,
      required String content,
      required String url,
      required String fullname}) {
    return BlocProvider(
      create: (context) => EditCommentCubit(),
      child: EditCommentScreen(
        id: id,
        postId: postId,
        content: content,
        url: url,
        fullname: fullname,
      ),
    );
  }

  const EditCommentScreen(
      {super.key,
      required this.id,
      required this.postId,
      required this.content,
      required this.url,
      required this.fullname});

  @override
  State<EditCommentScreen> createState() => _EditCommentScreenState();
}

class _EditCommentScreenState extends State<EditCommentScreen>
    with AfterLayoutMixin {
  final TextEditingController _contentController = TextEditingController();
  String? meId;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    Map<dynamic, String> userData = await UserPreferences.getUser();
    meId = userData['id'];
  }

  @override
  void initState() {
    super.initState();

    _contentController.text = widget.content;
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
        title: const Text(
          "Chỉnh sửa bình luận",
          style: TextStyle(
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
                BlocBuilder<EditCommentCubit, EditCommentState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          context.read<EditCommentCubit>().udpateComment(
                              id: widget.id,
                              postId: widget.postId,
                              content: _contentController.text);
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
