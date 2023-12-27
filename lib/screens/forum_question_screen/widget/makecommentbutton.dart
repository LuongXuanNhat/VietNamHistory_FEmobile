import 'package:flutter/material.dart';

class MakeCommentButton extends StatefulWidget {
  final int numberComment;
  const MakeCommentButton({super.key, required this.numberComment});

  @override
  State<MakeCommentButton> createState() => _MakeCommentButtonState();
}

class _MakeCommentButtonState extends State<MakeCommentButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.chat, color: Colors.grey, size: 18),
            const SizedBox(
              width: 5,
            ),
            Text(
              "${widget.numberComment} Trả lời",
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
