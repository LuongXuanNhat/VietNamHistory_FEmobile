import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../route_generator.dart';
import '../start_quiz/quiz_controller.dart';
import 'cubit/quiz_detail_cubit.dart';

class QuizDetailScreen extends StatefulWidget {
  final String id;
  static BlocProvider<QuizDetailCubit> provider({required String id}) {
    return BlocProvider(
      create: (context) => QuizDetailCubit(),
      child: QuizDetailScreen(
        id: id,
      ),
    );
  }

  const QuizDetailScreen({super.key, required this.id});

  @override
  State<QuizDetailScreen> createState() => _QuizDetailScreenState();
}

class _QuizDetailScreenState extends State<QuizDetailScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<QuizDetailCubit>().detailQuiz(widget.id);
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
          "Chi tiết bài thi",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: BlocBuilder<QuizDetailCubit, QuizDetailState>(
        builder: (context, state) {
          return state.data.detailQuizResponse == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.data.detailQuizResponse!.resultObj.title,
                            style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            state
                                .data.detailQuizResponse!.resultObj.description,
                            style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.assignment,
                                        color: GlobalColors.ButtonNavigation,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${state.data.detailQuizResponse!.resultObj.quizs.length} câu hỏi',
                                        style: const TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: GlobalColors.ButtonNavigation,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Thời gian làm bài: ${state.data.detailQuizResponse!.resultObj.workTime} phút',
                                        style: const TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  // const SizedBox(
                                  //   height: 10,
                                  // ),
                                  // Row(
                                  //   children: [
                                  //     Icon(
                                  //       Icons.description,
                                  //       color: GlobalColors.ButtonNavigation,
                                  //       size: 20,
                                  //     ),
                                  //     const SizedBox(
                                  //       width: 10,
                                  //     ),
                                  //     const Expanded(
                                  //       child: Text(
                                  //         'Tổng hợp đề thi trắc nghiệm online THPT QG của các môn Toán, Tiếng Anh, Vật lý, Hóa học, Sinh học, Địa lý, Lịch sử, GDCD kèm đáp án và lời giải chi tiết.',
                                  //         style: TextStyle(
                                  //             fontFamily: 'Inter',
                                  //             fontSize: 14,
                                  //             fontWeight: FontWeight.w400),
                                  //         overflow: TextOverflow.ellipsis,
                                  //         maxLines: 5,
                                  //       ),
                                  //     ),
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Hãy đọc kỹ nội dung bên dưới để bạn có thể hiểu nó",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "- Trả lời đúng  và không được điểm tối đa cho câu trả lời sai.",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "- Nhấn vào các tùy chọn để chọn câu trả lời đúng.",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "- Bấm gửi nếu bạn chắc chắn muốn hoàn thành tất cả các câu hỏi.",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            child: GestureDetector(
                              onTap: () {
                                navigator!.pushNamed(
                                  RouteGenerator.startQuizScreen,
                                );
                                final quizController =
                                    Get.put(QuizController());
                                quizController
                                    .loadData(state.data.detailQuizResponse!);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: GlobalColors.ButtonNavigation,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Bắt đầu làm bài",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
