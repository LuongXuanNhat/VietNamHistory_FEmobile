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
    return BlocProvider(
      create: (context) => QuestionCubit(),
      child: const QuestionScreen(),
    );
  }

  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> with AfterLayoutMixin {
  List<String> tags = [];
  final TextEditingController _txtQuestion = TextEditingController();
  final TextEditingController _txtSearchController = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  String? selectTags;
  bool isShowFilter = true;
  bool isShowFilter1 = false;
  bool isShowFilter2 = false;

  @override
  FutureOr afterFirstLayout(BuildContext context) async {
    context.read<QuestionCubit>().getAllQuestion();
    context.read<QuestionCubit>().loadUser();
    context.read<QuestionCubit>().getAllTag();

    _txtSearchController.addListener(() {
      context
          .read<QuestionCubit>()
          .searchQuestion(searchText: _txtSearchController.text);
    });
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
          tags.addAll(state.data.listTag);
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: SearchWidget(
                      hintText: 'Tìm câu hỏi bạn muốn tìm',
                      isShowFilter: false,
                      controller: _txtSearchController,
                      prefixIcon: const Icon(
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
                    padding: EdgeInsets.only(
                        left: 5,
                        right: MediaQuery.of(context).size.width * 0.74),
                    child: const Text(
                      'Danh mục',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Epilogue'),
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
                            return Row(
                              children: [
                                ButtonFilter(
                                  isSelected: isShowFilter1,
                                  title: 'Câu hỏi đã tạo',
                                  onToggle: () {
                                    setState(() {
                                      context
                                          .read<QuestionCubit>()
                                          .getMyQuestion();
                                      isShowFilter1 = !isShowFilter1;
                                      isShowFilter = false;
                                      isShowFilter2 = false;
                                      selectTags = null;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                ButtonFilter(
                                  isSelected: isShowFilter2,
                                  title: 'Câu hỏi đã lưu',
                                  onToggle: () {
                                    setState(() {
                                      context
                                          .read<QuestionCubit>()
                                          .getMyQuestionSave();
                                      isShowFilter1 = false;
                                      isShowFilter2 = !isShowFilter2;
                                      isShowFilter = false;
                                      selectTags = null;
                                    });
                                  },
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5,
                        right: MediaQuery.of(context).size.width * 0.44),
                    child: const Text(
                      'Tìm bài viết theo Hashtag',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Epilogue'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  state.data.listTag.isEmpty
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SizedBox(
                            height: 28,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      ButtonFilter(
                                        isSelected: isShowFilter,
                                        title: 'Tất cả',
                                        onToggle: () {
                                          context
                                              .read<QuestionCubit>()
                                              .getAllQuestion();
                                          setState(() {
                                            isShowFilter = !isShowFilter;
                                            isShowFilter1 = false;
                                            isShowFilter2 = false;
                                            selectTags = null;
                                          });
                                        },
                                      ),
                                      for (var item in tags)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, left: 5),
                                          child: ButtonFilter(
                                            title: item,
                                            isSelected: selectTags == item,
                                            onToggle: () {
                                              context
                                                  .read<QuestionCubit>()
                                                  .getQuestionByTag(tag: item);
                                              setState(() {
                                                selectTags = item;
                                                isShowFilter = false;
                                                isShowFilter1 = false;
                                                isShowFilter2 = false;
                                              });
                                            },
                                          ),
                                        ),
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(
                                    width: 7,
                                  );
                                },
                                itemCount: state.data.listTag.length),
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
                                      .resultObj![index].subId,
                                  'id': state.data.listQuestionResponse!
                                      .resultObj![index].id
                                });
                          },
                          questionId: state
                              .data.listQuestionResponse!.resultObj![index].id,
                          numberSave: state.data.listQuestionResponse!
                              .resultObj![index].saveNumber,
                          numberView: state.data.listQuestionResponse!
                              .resultObj![index].viewNumber,
                          numberComment: state.data.listQuestionResponse!
                              .resultObj![index].commentNumber,
                          userName: state.data.listQuestionResponse!
                              .resultObj![index].userShort.fullName,
                          time: state.data.listQuestionResponse!
                              .resultObj![index].createAt,
                          content: state.data.listQuestionResponse!
                              .resultObj![index].title,
                          image: state.data.listQuestionResponse!
                              .resultObj![index].userShort.image,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount:
                          state.data.listQuestionResponse!.resultObj!.length,
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

// Widget makeShareButton() {
//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//     decoration: BoxDecoration(
//       border: Border.all(color: Colors.grey),
//       borderRadius: BorderRadius.circular(50),
//     ),
//     child: const Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Icon(Icons.share, color: Colors.grey, size: 18),
//           SizedBox(
//             width: 5,
//           ),
//           Text(
//             "Chia sẻ",
//             style: TextStyle(color: Colors.grey),
//           )
//         ],
//       ),
//     ),
//   );
// }
