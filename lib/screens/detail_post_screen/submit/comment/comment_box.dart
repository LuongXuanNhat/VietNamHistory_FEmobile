import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../common/global_colors.dart';
import '../../../../models/post/model/comment.dart';
import '../../../../models/user/user_pres.dart';
import 'cubit/comment_cubit.dart';

class CommentScreen extends StatefulWidget {
  final String? postId;
  static BlocProvider<CommentCubit> provider({required String postId}) {
    return BlocProvider<CommentCubit>(
      create: (context) => CommentCubit(),
      child: CommentScreen(postId: postId),
    );
  }

  const CommentScreen({
    Key? key,
    this.postId,
  }) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> with AfterLayoutMixin {
  final formKey = GlobalKey<FormState>();
  UserPreferences userPref = UserPreferences();
  Timer? _pollingTimer;
  final prefs = SharedPreferences.getInstance();
  final TextEditingController commentController = TextEditingController();
  var comments = <Comment>[];
  bool loadedComments = false;

  Widget commentChild(List<Comment> data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                        imageURLorPath: data[i].userShort.image.isEmpty
                            ? 'assets/images/avartar1.png'
                            : data[i].userShort.image,
                      )),
                ),
              ),
              title: Text(
                data[i].userShort.fullName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(removeHtmlTags(data[i].content)),
              trailing: Text(formatCommentTime(data[i].createdAt),
                  style: const TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<CommentCubit>().loadComment(widget.postId!);
    context.read<CommentCubit>().loadImageUser();
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
          "Bình luận",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: BlocConsumer<CommentCubit, CommentState>(
        listener: (context, state) {},
        builder: (context, state) {
          comments = state.data.comments;
          List<Comment> sortedComments = List.from(comments);
          sortedComments.sort((a, b) => a.createdAt.compareTo(b.createdAt));
          return Container(
            child: CommentBox(
              userImage: CommentBox.commentImageParser(
                  imageURLorPath: state.data.imageUser),
              labelText: 'Viết bình luận...',
              errorText: 'Bình luận không được để trống',
              withBorder: false,
              sendButtonMethod: () {
                if (formKey.currentState!.validate()) {
                  context.read<CommentCubit>().commentPost(
                        postId: widget.postId!,
                        content: commentController.text,
                      );
                  setState(() {});
                  commentController.clear();
                  FocusScope.of(context).unfocus();
                } else {
                  print("Not validated");
                }
              },
              formKey: formKey,
              commentController: commentController,
              backgroundColor: GlobalColors.ButtonNavigation,
              textColor: Colors.white,
              sendWidget:
                  const Icon(Icons.send_sharp, size: 30, color: Colors.white),
              child: commentChild(sortedComments),
            ),
          );
        },
      ),
    );
  }

  String removeHtmlTags(String htmlString) {
    // Sử dụng biểu thức chính quy để loại bỏ thẻ HTML
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }

  String formatCommentTime(DateTime commentTime) {
    DateTime now = DateTime.now();
    timeago.setLocaleMessages('vi_short', timeago.ViShortMessages());
    return timeago.format(commentTime, locale: 'vi_short', clock: now);
  }
}
