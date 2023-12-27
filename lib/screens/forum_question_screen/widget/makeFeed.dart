import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'makeSaveQuestion.dart';
import 'makecommentbutton.dart';

class MakeFeed extends StatefulWidget {
  final String userName;
  final DateTime time;
  final String content;
  final int numberView;
  final int numberComment;
  final String questionId;
  final int numberSave;
  final String image;
  final VoidCallback onTap;
  const MakeFeed(
      {super.key,
      required this.userName,
      required this.time,
      required this.content,
      required this.image,
      required this.numberView,
      required this.numberComment,
      required this.onTap,
      required this.numberSave,
      required this.questionId});

  @override
  State<MakeFeed> createState() => _MakeFeedState();
}

class _MakeFeedState extends State<MakeFeed> {
  @override
  Widget build(BuildContext context) {
    int numberv = widget.numberView;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(widget.image),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.userName,
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "${widget.time.day}/${widget.time.month}/${widget.time.year} ${widget.time.hour}:${widget.time.minute}",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.content,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  height: 1.5,
                  letterSpacing: .7),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.numberView} lượt xem',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                MakeCommentButton(
                  numberComment: widget.numberComment,
                ),
                MakeSaveQuestion(
                  numberSave: widget.numberSave,
                  questionId: widget.questionId,
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
