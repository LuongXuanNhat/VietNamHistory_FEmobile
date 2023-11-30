import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/global_colors.dart';
import '../../../../models/question/answer/response/listanswerresponse.dart';
import '../cubit/detail_question_cubit.dart';

class CommentItem extends StatefulWidget {
  final Size size;
  final String answerId;

  final String image;
  final String userName;
  final String content;
  final String userId;
  final List<SubAnswer?>? subAnswer;
  final DateTime time;
  final String? contentSubAnswer;
  final String? subAnswerId;

  //final ValueChanged<MyProfileData> updateMyDataToMain;
  final ValueChanged<List<String>> replyComment;
  const CommentItem(
    this.size,
    this.replyComment, {
    super.key,
    required this.answerId,
    required this.image,
    required this.userName,
    required this.content,
    required this.userId,
    required this.time,
    this.subAnswerId,
    required this.subAnswer,
    this.contentSubAnswer,
  });
  @override
  State<StatefulWidget> createState() => _CommentItem();
}

class _CommentItem extends State<CommentItem> {
  final TextEditingController _txtSubAnswer = TextEditingController();
  @override
  void initState() {
    super.initState();
    _txtSubAnswer.text = widget.contentSubAnswer ?? '';
  }

  void _updateLikeCount(bool isLikePost) async {
    setState(() {});
  }

  bool isOpen = false;

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
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
                            widget.image,
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
                            width: widget.size.width -
                                (widget.answerId == null ? 90 : 110),
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
                                      widget.userName,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: widget.content,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                            child: SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                      '${widget.time.day}/${widget.time.month}/${widget.time.year} ${widget.time.hour}:${widget.time.minute}',
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
                                  if (widget.subAnswer != null &&
                                      widget.subAnswer!.isNotEmpty)
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isShow = !isShow;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                                '${widget.subAnswer!.length} bình luận',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey[700])),
                                            Icon(isShow
                                                ? Icons.arrow_drop_down_rounded
                                                : Icons.arrow_drop_up_rounded),
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
                ],
              ),
              5 > 0
                  ? Positioned(
                      bottom: 10,
                      right: 0,
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
                                const Text('5', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          )),
                    )
                  : Container(),
            ],
          ),
          AnimatedContainer(
            height: isOpen ? 50 : 0,
            color: Colors.white,
            duration: const Duration(seconds: 1),
            alignment: Alignment.center,
            curve: Curves.fastOutSlowIn,
            child: isOpen
                ? Padding(
                    padding: const EdgeInsets.only(
                        left: 50, top: 2, bottom: 5, right: 40),
                    child: TextField(
                      controller: _txtSubAnswer,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<DetailQuestionCubit>()
                                  .createSubAnswer(
                                      preAnswerId: widget.answerId,
                                      content: _txtSubAnswer.text);
                            },
                            icon: Icon(
                              Icons.send,
                              color: GlobalColors.ButtonNavigation,
                            )),
                        hintText: 'Viết câu trả lời của bạn...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          if (widget.subAnswer != null)
            for (var item in widget.subAnswer!)
              AnimatedContainer(
                color: Colors.white,
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                curve: Curves.fastOutSlowIn,
                child: isShow
                    ? Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      item!.userShort.image,
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
                                          (item.id == null ? 100 : 160),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15.0)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                item.userShort.fullName,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: item.content,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.black)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 8.0, top: 4.0),
                                      child: SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            // Text(
                                            //     '${item.pubDate.day}/${item.pubDate.month}/${item.pubDate.year} ${item.pubDate.hour}:${item.pubDate.minute}',
                                            //     style: TextStyle(
                                            //         fontSize: 12,
                                            //         color: Colors.grey[700])),
                                            SizedBox(
                                              width: 10,
                                            ),
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
                      )
                    : null,
              ),
        ],
      ),
    );
  }
}
