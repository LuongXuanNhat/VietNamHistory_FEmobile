import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../common/global_colors.dart';
import '../../../../models/question/answer/response/listanswerresponse.dart';
import '../../../../models/question/sub_answer/response/vote_asnwert_response.dart';
import '../../../../route_generator.dart';
import '../cubit/detail_question_cubit.dart';
import 'subcommentItem.dart';

class CommentItem extends StatefulWidget {
  final ResultObjs? item;

  final Size size;
  final VoteAnswerResponse? voteAnswerResponse;
  final String? userCurrent;
  final numberVote;
  final String subId;
  static BlocProvider<DetailQuestionCubit> provider(
      {required ResultObjs item,
      required Size size,
      required VoteAnswerResponse voteAnswerResponse,
      required String userCurrent,
      required String subId,
      required int numberVote}) {
    return BlocProvider(
      create: (context) => DetailQuestionCubit(),
      child: CommentItem(
        size,
        subId: subId,
        item: item,
        voteAnswerResponse: voteAnswerResponse,
        userCurrent: userCurrent,
        numberVote: numberVote,
      ),
    );
  }

  const CommentItem(
    this.size, {
    Key? key,
    this.userCurrent,
    this.item,
    this.voteAnswerResponse,
    this.numberVote,
    required this.subId,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CommentItem();
}

class _CommentItem extends State<CommentItem> with AfterLayoutMixin {
  final TextEditingController _txtSubAnswer = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final FocusNode writingTextFocus = FocusNode();
  bool isOpen = false;
  bool isOpen1 = false;
  bool isConfirm = false;
  bool isVote = false;
  bool isShow = false;
  bool isVoteee = false;
  int localVote = 0;
  String removeHtmlTags(String htmlString) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<DetailQuestionCubit>().getMyVote(answerId: widget.item!.id);
  }

  @override
  Widget build(BuildContext contextcurrent) {
    return BlocBuilder<DetailQuestionCubit, DetailQuestionState>(
      builder: (context, state) {
        localVote = state.data.getMyVote != null
            ? state.data.getMyVote!.resultObj.quantity
            : 0;
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          widget.userCurrent == widget.item!.userShort.id
                              ? showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.transparent,
                                      content: IntrinsicWidth(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.white),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    navigator!.pushNamed(
                                                        RouteGenerator
                                                            .editAnswerScreen,
                                                        arguments: {
                                                          'isSubAnswer': false,
                                                          'questionId': widget
                                                              .item!.questionId,
                                                          'authorId': widget
                                                              .userCurrent,
                                                          'answerId':
                                                              widget.item!.id,
                                                          'content': widget
                                                              .item!.content,
                                                          'url': widget.item!
                                                              .userShort.image,
                                                          'fullname': widget
                                                              .item!
                                                              .userShort
                                                              .fullName,
                                                        });
                                                  },
                                                  child: const Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.edit_outlined,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        'Sửa câu trả lời',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              const SizedBox(height: 10),
                                              GestureDetector(
                                                  onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder:
                                                            (BuildContext
                                                                    context) =>
                                                                AlertDialog(
                                                                  title: const Text(
                                                                      'Xác nhận xóa trả lời'),
                                                                  content:
                                                                      const Text(
                                                                          'Bạn có chắc chắn muốn xóa trả lời này?'),
                                                                  actions: [
                                                                    TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Hủy')),
                                                                    TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          contextcurrent
                                                                              .read<DetailQuestionCubit>()
                                                                              .deleteAnswer(id: widget.item!.id);
                                                                          Navigator.pop(
                                                                              context);
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Xóa')),
                                                                  ],
                                                                ));
                                                  },
                                                  child: const Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.delete_outline,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        'Xóa bình luận',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              const SizedBox(height: 10),
                                              GestureDetector(
                                                  onTap: () {
                                                    contextcurrent
                                                        .read<
                                                            DetailQuestionCubit>()
                                                        .voteAnswer(
                                                            subId: widget.subId,
                                                            questionId: widget
                                                                .item!
                                                                .questionId,
                                                            answerId:
                                                                widget.item!.id,
                                                            questionUserId:
                                                                widget
                                                                    .item!
                                                                    .userShort
                                                                    .id);
                                                    setState(() {
                                                      isVoteee = !isVoteee;
                                                      if (state.data
                                                              .voteAnswerResponse !=
                                                          null) {
                                                        localVote = state
                                                            .data
                                                            .voteAnswerResponse!
                                                            .resultObj
                                                            .quantity;
                                                      }
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .how_to_vote_outlined,
                                                        size: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        isVoteee == false
                                                            ? 'Bình chọn câu trả lời này'
                                                            : 'Huỷ bình chọn câu trả lời này',
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              const SizedBox(height: 10),
                                              GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isConfirm = !isConfirm;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons.check_rounded,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        isConfirm == false
                                                            ? 'Là câu trả lời chính xác'
                                                            : 'Huỷ chọn là câu trả lời chính xác',
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                              : showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.transparent,
                                      content: IntrinsicWidth(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.white),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    contextcurrent
                                                        .read<
                                                            DetailQuestionCubit>()
                                                        .voteAnswer(
                                                            subId: widget.subId,
                                                            questionId: widget
                                                                .item!
                                                                .questionId,
                                                            answerId:
                                                                widget.item!.id,
                                                            questionUserId:
                                                                widget
                                                                    .item!
                                                                    .userShort
                                                                    .id);
                                                    setState(() {
                                                      isVoteee = !isVoteee;
                                                      if (state.data
                                                              .voteAnswerResponse !=
                                                          null) {
                                                        localVote = state
                                                            .data
                                                            .voteAnswerResponse!
                                                            .resultObj
                                                            .quantity;
                                                      }
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .how_to_vote_outlined,
                                                        size: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        isVoteee == false
                                                            ? 'Bình chọn câu trả lời này'
                                                            : 'Huỷ bình chọn câu trả lời này',
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isConfirm = !isConfirm;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons.check_rounded,
                                                        size: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        isConfirm == false
                                                            ? 'Là câu trả lời chính xác'
                                                            : 'Huỷ chọn là câu trả lời chính xác',
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'Mulish',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  widget.item!.userShort.image,
                                  errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) {
                                    return const CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            'assets/images/avartar1.png'));
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
                                  width: widget.size.width -
                                      (widget.item!.id == null ? 90 : 110),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15.0)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            widget.item!.userShort.fullName,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: Html(
                                                data: widget.item!.content)),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 4.0),
                                  child: SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                            '${widget.item!.createdAt.day}/${widget.item!.createdAt.month}/${widget.item!.createdAt.year} ${widget.item!.createdAt.hour}:${widget.item!.createdAt.minute}',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[700])),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isOpen = !isOpen;
                                              });
                                            },
                                            child: Text('Trả lời',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[700]))),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        if (widget.item!.subAnswer != null)
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isShow = !isShow;
                                                });
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                      '${widget.item!.subAnswer!.length} bình luận',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .grey[700])),
                                                  Icon(isShow
                                                      ? Icons
                                                          .arrow_drop_down_rounded
                                                      : Icons
                                                          .arrow_drop_up_rounded),
                                                ],
                                              )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  isConfirm == true
                      ? Positioned(
                          bottom: 40,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Card(
                                elevation: 2.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: Colors.red[900],
                                  ),
                                )),
                          ),
                        )
                      : Container(),
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                          elevation: 2.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_rounded,
                                  size: 14,
                                  color: Colors.blue[900],
                                ),
                                Text(widget.item!.voteNumber.toString(),
                                    style: const TextStyle(fontSize: 14)),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              AnimatedContainer(
                height: isOpen ? 50 : 0,
                color: Colors.white,
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                curve: Curves.fastOutSlowIn,
                child: isOpen ? _buildTextComposer() : Container(),
              ),
              for (var item in widget.item!.subAnswer!)
                AnimatedContainer(
                  color: Colors.white,
                  duration: const Duration(seconds: 1),
                  alignment: Alignment.center,
                  curve: Curves.fastOutSlowIn,
                  child: isShow
                      ? SubCommentItem(
                          size: widget.size,
                          item: item!,
                          userCurrent: widget.userCurrent!,
                        )
                      : null,
                )
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 5, top: 8.0, bottom: 3.0),
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
                    controller: _txtSubAnswer,
                    onSubmitted: _handleSubmitted,
                    decoration: const InputDecoration.collapsed(
                        hintText: "Viết bình luận của bạn..."),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => _handleSubmitted(_txtSubAnswer.text),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSubmitted(String text) async {
    try {
      await context.read<DetailQuestionCubit>().createSubAnswer(
          preAnswerId: widget.item!.id, content: _txtSubAnswer.text);

      FocusScope.of(context).requestFocus(FocusNode());

      _txtSubAnswer.text = '';
    } catch (e) {
      print('error to submit comment');
    }
  }
}
