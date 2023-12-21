import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';
import '../../route_generator.dart';
import '../../widgets/search_widget.dart';
import 'cubit/quiz_cubit.dart';

class QuizScreen extends StatefulWidget {
  static BlocProvider<QuizCubit> provider() {
    return BlocProvider(
      create: (context) => QuizCubit(),
      child: const QuizScreen(),
    );
  }

  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<QuizCubit>().listMultipleChoice();
  }

  @override
  Widget build(BuildContext context) {
    var selectedPageNumber = 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Luyện tập",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<QuizCubit, QuizState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: SearchWidget(
                      hintText: 'Tìm bất cứ điều gì',
                      isShowFilter: false,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                  ),
                  state.data.multipleChoiceResponse == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: GestureDetector(
                                      onTap: () {
                                        navigator!.pushNamed(
                                            RouteGenerator.quizDetailScreen,
                                            arguments: {
                                              "id": state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .id
                                            });
                                      },
                                      child: state.data.multipleChoiceResponse!
                                                  .resultObj[index] !=
                                              null
                                          ? ContainerQuiz(
                                              title: state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .title,
                                              numberQuestion: state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .numberQuiz,
                                              time: state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .workTime,
                                              date: state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .createdAt,
                                              name: state
                                                  .data
                                                  .multipleChoiceResponse!
                                                  .resultObj[index]
                                                  .userShort
                                                  .fullName,
                                            )
                                          : Container()),
                                );
                              },
                              itemCount: state.data.multipleChoiceResponse!
                                  .resultObj.length),
                        ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ContainerQuiz extends StatefulWidget {
  final String title;
  final int numberQuestion;
  final int time;
  final DateTime date;
  final String name;
  const ContainerQuiz(
      {super.key,
      required this.title,
      required this.numberQuestion,
      required this.time,
      required this.date,
      required this.name});

  @override
  State<ContainerQuiz> createState() => _ContainerQuizState();
}

class _ContainerQuizState extends State<ContainerQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: GlobalColors.border_color,
            width: 1,
          )),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/quiz.png",
                width: 135,
                height: 102,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Epilogue'),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '- ${widget.numberQuestion} câu hỏi',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '- ${widget.time} phút làm bài',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '- ${widget.date.day}/${widget.date.month}/${widget.date.year}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person_4_outlined,
                        size: 12,
                      ),
                      Text(
                        widget.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
