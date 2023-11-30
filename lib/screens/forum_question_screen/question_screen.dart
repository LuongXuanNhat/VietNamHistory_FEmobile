import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';
import '../../route_generator.dart';
import '../../widgets/button_fliter.dart';
import '../../widgets/search_widget.dart';
import 'cubit/question_cubit.dart';
import 'widget/makeFeed.dart';

class QuestionScreen extends StatefulWidget {
  static BlocProvider<QuestionCubit> provider() {
    return BlocProvider<QuestionCubit>(
      create: (context) => QuestionCubit(),
      child: const QuestionScreen(),
    );
  }

  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> with AfterLayoutMixin {
  final TextEditingController _txtQuestion = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr afterFirstLayout(BuildContext context) async {
    context.read<QuestionCubit>().getAllQuestion();
    context.read<QuestionCubit>().loadUser();
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
          "Hỏi đáp",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      key: _globalKey,
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: SearchWidget(
                      hintText: 'Tìm câu hỏi bạn muốn tìm',
                      isShowFilter: false,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(221, 228, 225, 225)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              state.data.image!,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return const CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/avartar1.png'),
                                );
                              },
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: _txtQuestion,
                                    onTap: () {
                                      navigator?.pushNamed(
                                          RouteGenerator.createQuestionScreen);
                                    },
                                    decoration: const InputDecoration(
                                        hintText: 'Nhập câu hỏi của bạn...',
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.only(left: 20)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      height: 28,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return const Row(
                              children: [
                                ButtonFilter(
                                  title: "Tạo bài viết",
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                ButtonFilter(
                                  title: 'Tất cả',
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                ButtonFilter(
                                  title: 'Bài viết thịnh hành',
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                ButtonFilter(
                                  title: 'Bài viết xem nhiều nhất',
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 7,
                            );
                          },
                          itemCount: 1),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (state.data.listQuestionResponse != null)
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return MakeFeed(
                          onTap: () {
                            navigator?.pushNamed(
                                RouteGenerator.detailQuestionScreen,
                                arguments: {
                                  'subId': state.data.listQuestionResponse!
                                      .resultObj[index].subId,
                                  'id': state.data.listQuestionResponse!
                                      .resultObj[index].id
                                });
                          },
                          numberView: state.data.listQuestionResponse!
                              .resultObj[index].viewNumber,
                          numberComment: state.data.listQuestionResponse!
                              .resultObj[index].commentNumber,
                          userName: state.data.listQuestionResponse!
                              .resultObj[index].userShort.fullName,
                          time: state.data.listQuestionResponse!
                              .resultObj[index].createAt,
                          content: state.data.listQuestionResponse!
                              .resultObj[index].title,
                          image: state.data.listQuestionResponse!
                              .resultObj[index].userShort.image,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount:
                          state.data.listQuestionResponse!.resultObj.length,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget makeShareButton() {
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
          Icon(Icons.share, color: Colors.grey, size: 18),
          SizedBox(
            width: 5,
          ),
          Text(
            "Chia sẻ",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    ),
  );
}
