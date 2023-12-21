import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../common/global_colors.dart';
import '../../../../models/question/answer/response/listanswerresponse.dart';
import '../../../../route_generator.dart';
import '../cubit/detail_question_cubit.dart';

class SubCommentItem extends StatefulWidget {
  final SubAnswer item;
  final String userCurrent;
  final Size size;
  const SubCommentItem(
      {super.key,
      required this.item,
      required this.userCurrent,
      required this.size});

  @override
  State<SubCommentItem> createState() => _SubCommentItemState();
}

class _SubCommentItemState extends State<SubCommentItem> {
  final TextEditingController _txtSubAnswer = TextEditingController();
  bool isOpen = false;
  String removeHtmlTags(String htmlString) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }

  @override
  Widget build(BuildContext contextcurrent) {
    return Padding(
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
                    widget.item.userShort.image,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
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
              InkWell(
                onTap: () {
                  widget.userCurrent == widget.item.userShort.id
                      ? showDialog(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            navigator!.pushNamed(
                                                RouteGenerator.editAnswerScreen,
                                                arguments: {
                                                  'isSubAnswer': true,
                                                  'questionId': widget.item.id,
                                                  'authorId':
                                                      widget.item.userShort.id,
                                                  'answerId':
                                                      widget.item.preAnswerId,
                                                  'content':
                                                      widget.item.content,
                                                  'url': widget
                                                      .item.userShort.image,
                                                  'fullname': widget
                                                      .item.userShort.fullName,
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
                                                'Sửa bình luận cho câu trả lời',
                                                style: TextStyle(
                                                    fontFamily: 'Mulish',
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          )),
                                      const SizedBox(height: 10),
                                      GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) =>
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
                                                                    const Text(
                                                                        'Hủy')),
                                                            TextButton(
                                                                onPressed: () {
                                                                  contextcurrent
                                                                      .read<
                                                                          DetailQuestionCubit>()
                                                                      .deleteSubAnswer(
                                                                          id: widget
                                                                              .item
                                                                              .id);
                                                                  Navigator.pop(
                                                                      context);
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const Text(
                                                                        'Xóa')),
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
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })
                      : Container();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: widget.size.width -
                          (widget.item.id == null ? 100 : 160),
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
                                widget.item.userShort.fullName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Html(data: widget.item.content),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                                '${widget.item.createdAt.day}/${widget.item.createdAt.month}/${widget.item.createdAt.year} ${widget.item.createdAt.hour}:${widget.item.createdAt.minute}',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[700])),
                            const SizedBox(
                              width: 10,
                            ),
                            widget.userCurrent != widget.item.userShort.id
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isOpen = !isOpen;

                                        _txtSubAnswer.text =
                                            '${widget.item.userShort.fullName} ';
                                      });
                                    },
                                    child: Text('Trả lời',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700])))
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
