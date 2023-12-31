import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:signalr_netcore/signalr_client.dart';

import '../../../models/question/answer/response/listanswerresponse.dart';

import '../../../common/global_colors.dart';
import '../../../models/user/user_pres.dart';
import '../../../route_generator.dart';
import '../../../widgets/button_fliter.dart';
import '../cubit/question_cubit.dart';
import 'cubit/detail_question_cubit.dart';
import 'widget/commentItem.dart';

class DetailQuestionScreen extends StatefulWidget {
  final String? subId;
  final String? id;

  static BlocProvider<DetailQuestionCubit> provider(
      {required String subId, required String id}) {
    return BlocProvider<DetailQuestionCubit>(
        create: (context) => DetailQuestionCubit(),
        child: DetailQuestionScreen(
          subId: subId,
          id: id,
        ));
  }

  const DetailQuestionScreen({super.key, this.subId, this.id});

  @override
  State<DetailQuestionScreen> createState() => _DetailQuestionScreenState();
}

class _DetailQuestionScreenState extends State<DetailQuestionScreen>
    with AfterLayoutMixin {
  final TextEditingController _msgTextController = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  late String replyUserID;
  late String replyCommentID;
  late String replyUserFCMToken;
  final FocusNode writingTextFocus = FocusNode();
  String signalRStatus = "disconnected";
  ListAnswerResponse? listAnswerResponse;
  String? idUser;
  final hubConnection = HubConnectionBuilder()
      .withUrl("https://vuanhpham25-001-site1.gtempurl.com/commentHub")
      .build();
  List<ResultObjs> _answers = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<DetailQuestionCubit>().getDetailQuestion(subId: widget.subId!);
    context.read<DetailQuestionCubit>().getListAnswer(subId: widget.id!);
    Map<dynamic, String> userData = await UserPreferences.getUser();
    idUser = userData['id'];
    await hubConnection.start();
    log("Connection state: ${hubConnection.state}, connection id: ${hubConnection.connectionId}");

    hubConnection.on('ReceiveAnswer', (message) {
      log("ReceiveAnswer: $message");
      try {
        List<dynamic>? dataList = message;
        for (var item in dataList!) {
          bool isSuccessed = item['isSuccessed'] ?? false;
          String message = item['message'] ?? '';
          List<dynamic> resultObj = item['resultObj'] ?? [];
          if (isSuccessed) {
            ListAnswerResponse listAnswerResponse =
                ListAnswerResponse.fromJson(item);
            context
                .read<DetailQuestionCubit>()
                .updateWithDataFromHub(data: listAnswerResponse);
          }
        }
      } catch (e) {
        log(e.toString());
      }
    });
    hubConnection.on('ReceiveSubAnswer', (message) {
      log("ReceiveSubAnswer: $message");
      try {
        context.read<DetailQuestionCubit>().getListAnswer(subId: widget.id!);
      } catch (e) {
        log(e.toString());
      }
    });
  }

  void _msgTextControllerListerner() {
    if (_msgTextController.text.isEmpty ||
        _msgTextController.text.split(" ")[0] != replyUserID) {
      replyUserID = '';
      replyCommentID = '';
      replyUserFCMToken = '';
    }
  }

  void _replyComment(List<String> commentData) async {
    replyUserID = commentData[0];
    replyCommentID = commentData[1];
    replyUserFCMToken = commentData[2];
    FocusScope.of(context).requestFocus(writingTextFocus);
    _msgTextController.text = '${commentData[0]} ';
  }

  bool isOpenSubAnswer = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Chi tiết câu hỏi",
            style: TextStyle(
                fontFamily: "Epilogue",
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          iconTheme: IconThemeData(color: GlobalColors.colorBack),
        ),
        key: _globalKey,
        body: BlocBuilder<DetailQuestionCubit, DetailQuestionState>(
          builder: (context, state) {
            final detail = state.data.questionResponse;
            String content = '';
            if (state.data.resultObjs != null) {
              _answers = state.data.resultObjs!;
              content = detail?.resultObj.content ?? '';
              if (containsHtml(content)) {
                content = content.replaceAll(RegExp(r'<[^>]*>'), '');
              }
            }
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    if (detail != null)
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              state.data.questionResponse!.resultObj.userShort
                                  .image,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return const CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/avartar1.png'),
                                );
                              },
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.data.questionResponse!.resultObj.userShort
                                    .fullName,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Inter'),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${state.data.questionResponse!.resultObj.createAt.day}/${state.data.questionResponse!.resultObj.createAt.month}/${state.data.questionResponse!.resultObj.createAt.year} ${state.data.questionResponse!.resultObj.createAt.hour}:${state.data.questionResponse!.resultObj.createAt.minute}',
                                    style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter'),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.public,
                                    size: 13,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.4,
                                  ),
                                  idUser ==
                                          state.data.questionResponse!.resultObj
                                              .userShort.id
                                      ? InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    alignment:
                                                        Alignment.topRight,
                                                    elevation: 0.0,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: IntrinsicWidth(
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        decoration: const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                            color:
                                                                Colors.white),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            idUser ==
                                                                    state
                                                                        .data
                                                                        .questionResponse!
                                                                        .resultObj
                                                                        .userShort
                                                                        .id
                                                                ? GestureDetector(
                                                                    onTap: () {
                                                                      navigator!.pushNamed(
                                                                          RouteGenerator
                                                                              .updateQuestionScreen,
                                                                          arguments: {
                                                                            'data':
                                                                                state.data.questionResponse
                                                                          });
                                                                    },
                                                                    child:
                                                                        const Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .edit_outlined,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                          'Sửa câu hỏi',
                                                                          style: TextStyle(
                                                                              fontFamily: 'Mulish',
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                : Container(),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 10),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder: (BuildContext
                                                                              context) =>
                                                                          AlertDialog(
                                                                            title:
                                                                                const Text('Xác nhận xóa câu hỏi'),
                                                                            content:
                                                                                const Text('Bạn có chắc chắn muốn xóa câu hỏi này?'),
                                                                            actions: [
                                                                              TextButton(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Hủy')),
                                                                              TextButton(
                                                                                  onPressed: () {
                                                                                    _globalKey.currentContext!.read<DetailQuestionCubit>().deleteQuestion(id: widget.id!);

                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Xóa')),
                                                                            ],
                                                                          ));
                                                                },
                                                                child: idUser ==
                                                                        state
                                                                            .data
                                                                            .questionResponse!
                                                                            .resultObj
                                                                            .userShort
                                                                            .id
                                                                    ? const Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.delete_outline,
                                                                            size:
                                                                                20,
                                                                          ),
                                                                          Text(
                                                                            'Xóa câu hỏi',
                                                                            style: TextStyle(
                                                                                fontFamily: 'Mulish',
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w400),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    : Container(),
                                                              ),
                                                            ),
                                                            idUser ==
                                                                    state
                                                                        .data
                                                                        .questionResponse!
                                                                        .resultObj
                                                                        .userShort
                                                                        .id
                                                                ? const SizedBox(
                                                                    height: 10)
                                                                : Container(),
                                                            // GestureDetector(
                                                            //   onTap: () {},
                                                            //   child: const Row(
                                                            //     mainAxisSize:
                                                            //         MainAxisSize.min,
                                                            //     children: [
                                                            //       Icon(
                                                            //         Icons
                                                            //             .report_outlined,
                                                            //         size: 20,
                                                            //       ),
                                                            //       Text(
                                                            //         'Báo cáo bài viết',
                                                            //         style: TextStyle(
                                                            //             fontFamily:
                                                            //                 'Mulish',
                                                            //             fontSize: 14,
                                                            //             fontWeight:
                                                            //                 FontWeight
                                                            //                     .w400),
                                                            //       ),
                                                            //     ],
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          child: const FaIcon(
                                            FontAwesomeIcons.ellipsisVertical,
                                            size: 20,
                                          ),
                                        )
                                      : Container(),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    const SizedBox(
                      height: 10,
                    ),

                    if (detail != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          height: 28,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  children: [
                                    ButtonFilter(
                                      isSelected: true,
                                      title: state.data.questionResponse!
                                          .resultObj.tags[index].name,
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  width: 7,
                                );
                              },
                              itemCount: detail.resultObj.tags.length),
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Title
                    if (detail != null)
                      Text(
                        detail.resultObj.title,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter'),
                      ),
                    //Content
                    const SizedBox(
                      height: 10,
                    ),
                    if (detail != null)
                      Html(
                        data: state.data.questionResponse!.resultObj.content,
                      ),

                    const SizedBox(
                      height: 10,
                    ),
                    if (detail != null)
                      Row(
                        children: [
                          const Icon(Icons.remove_red_eye_outlined, size: 13),
                          Text(' ${detail.resultObj.viewNumber} lượt xem',
                              style: const TextStyle(fontSize: 12)),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.comment_outlined, size: 13),
                              Text(
                                  ' ${detail.resultObj.commentNumber} bình luận',
                                  style: const TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),

                    const SizedBox(
                      height: 10,
                    ),

                    _buildTextComposer(),
                    if (state.data.resultObjs != null)
                      for (var i = 0; i < state.data.resultObjs!.length; i++)
                        if (state.data.resultObjs![i].subAnswer != null)
                          CommentItem(
                            subId: widget.id!,
                            item: state.data.resultObjs![i],
                            size,
                            userCurrent: idUser!,
                          ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconTheme(
          data: IconThemeData(color: GlobalColors.ButtonNavigation),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    focusNode: writingTextFocus,
                    controller: _msgTextController,
                    onSubmitted: _handleSubmitted,
                    decoration: const InputDecoration.collapsed(
                        hintText: "Viết câu trả lời của bạn..."),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () =>
                          _handleSubmitted(_msgTextController.text),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool containsHtml(String input) {
    final RegExp htmlRegex = RegExp(r'<[^>]*>');

    return htmlRegex.hasMatch(input);
  }

  Future<void> _handleSubmitted(String text) async {
    try {
      await context.read<DetailQuestionCubit>().createAnser(
          questionId: widget.id!,
          content: _msgTextController.text,
          subId: widget.subId!);

      FocusScope.of(context).requestFocus(FocusNode());

      _msgTextController.text = '';
    } catch (e) {
      print('error to submit comment');
    }
  }
}
