// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/question_cubit.dart';

class MakeSaveQuestion extends StatefulWidget {
  final int numberSave;
  final String questionId;
  static BlocProvider<QuestionCubit> provider(
      {required int numberSave, required String questionId}) {
    return BlocProvider(
      create: (context) => QuestionCubit(),
      child: MakeSaveQuestion(
        numberSave: numberSave,
        questionId: questionId,
      ),
    );
  }

  const MakeSaveQuestion({
    Key? key,
    required this.numberSave,
    required this.questionId,
  }) : super(key: key);

  @override
  State<MakeSaveQuestion> createState() => MakeSaveQuestionState();
}

class MakeSaveQuestionState extends State<MakeSaveQuestion> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<QuestionCubit>()
                .saveQuestion(questionId: widget.questionId);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.save_alt_rounded,
                      color: Colors.grey, size: 18),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.numberSave.toString()} Lược lưu",
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
