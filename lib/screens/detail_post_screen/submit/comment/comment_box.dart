import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';

import '../../../../common/global_colors.dart';
import '../../../../models/post/model/comment.dart';
import '../../../../models/post/response/comment_post_response.dart';
import '../../../../models/user/user_pres.dart';
import '../../../../route_generator.dart';
import 'cubit/comment_cubit.dart';

class CommentScreen extends StatefulWidget {
  final String? postId;

  static MultiBlocProvider provider({required String postId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CommentCubit>(
          create: (context) => CommentCubit(),
        ),
      ],
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
  String? meId;
  final prefs = SharedPreferences.getInstance();
  final TextEditingController commentController = TextEditingController();
  var comments = <Comment>[];
  bool loadedComments = false;
  final hubConnection = HubConnectionBuilder()
      .withUrl("https://vuanhpham25-001-site1.gtempurl.com/commentHub")
      .build();

  Widget commentChild({required List<ResultObj> data, BuildContext? ccontext}) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(45)),
                    child: Image.network(
                      data[i].userShort.image,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/avartar1.png'),
                        );
                      },
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Text(
                data[i].userShort.fullName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Html(data: data[i].content),
              trailing: Text(
                  '${data[i].createdAt.day}/${data[i].createdAt.month}/${data[i].createdAt.year} ${data[i].createdAt.hour}:${data[i].createdAt.minute}',
                  style: const TextStyle(fontSize: 10)),
              onTap: () {
                if (meId == data[i].userShort.id) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: IntrinsicWidth(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        navigator!.pushNamed(
                                            RouteGenerator.editCommnetScreen,
                                            arguments: {
                                              'id': data[i].id,
                                              'postId': data[i].postId,
                                              'content': data[i].content,
                                              'url': data[i].userShort.image,
                                              'fullname':
                                                  data[i].userShort.fullName,
                                            });
                                      },
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            'Sửa bình luận',
                                            style: TextStyle(
                                                fontFamily: 'Mulish',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  title: const Text(
                                                      'Xác nhận xóa bình luận'),
                                                  content: const Text(
                                                      'Bạn có chắc chắn muốn xóa bình luận này?'),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child:
                                                            const Text('Hủy')),
                                                    TextButton(
                                                        onPressed: () {
                                                          ccontext!
                                                              .read<
                                                                  CommentCubit>()
                                                              .deleteComment(
                                                                  id: data[i]
                                                                      .id);

                                                          Navigator.pop(
                                                              context);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child:
                                                            const Text('Xóa')),
                                                  ],
                                                ));
                                      },
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.delete_outline,
                                            size: 20,
                                          ),
                                          Text(
                                            'Xóa bình luận',
                                            style: TextStyle(
                                                fontFamily: 'Mulish',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                }
              },
            ),
          ),
      ],
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<CommentCubit>().loadComment(widget.postId!);
    context.read<CommentCubit>().loadImageUser();
    Map<dynamic, String> userData = await UserPreferences.getUser();
    meId = userData['id'];
    await hubConnection.start();
    log("Connection state: ${hubConnection.state}, connection id: ${hubConnection.connectionId}");
    hubConnection.on('ReceiveComment', (message) {
      log("ReceiveComment: $message");
      try {
        List<dynamic>? dataList = message;
        for (var item in dataList!) {
          bool isSuccessed = item['isSuccessed'] ?? false;

          if (isSuccessed) {
            CommentResponse commentResponse = CommentResponse.fromJson(item);
            context
                .read<CommentCubit>()
                .loadCommentHubConnection(data: commentResponse);
          }
        }
      } catch (e) {
        log(e.toString());
      }
    });
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
                child: state.data.resultObjs != null
                    ? commentChild(
                        data: state.data.resultObjs!,
                        ccontext: context,
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      )),
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
}
