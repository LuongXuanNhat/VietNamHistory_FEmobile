import 'package:flutter/material.dart';

class MakeSaveQuestion extends StatefulWidget {
  const MakeSaveQuestion({super.key});

  @override
  State<MakeSaveQuestion> createState() => MakeSaveQuestionState();
}

class MakeSaveQuestionState extends State<MakeSaveQuestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.save_alt_rounded, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Lưu",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
