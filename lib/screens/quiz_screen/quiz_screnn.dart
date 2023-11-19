import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../common/global_colors.dart';
import '../../widgets/search_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: SearchWidget(
                  hintText: 'Tìm bất cứ điều gì',
                  isShowFilter: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: ContainerQuiz(),
                      );
                    },
                    itemCount: 5),
              ),
              NumberPagination(
                onPageChanged: (int pageNumber) {
                  //do somthing for selected page
                  setState(() {
                    selectedPageNumber = pageNumber;
                  });
                },
                threshold: 4,
                pageTotal: 10,
                pageInit: selectedPageNumber,
                colorPrimary: GlobalColors.ButtonNavigation,
                colorSub: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerQuiz extends StatefulWidget {
  const ContainerQuiz({super.key});

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
            Image.asset(
              "assets/images/history/bacho.png",
              width: 135,
              height: 102,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '60 câu trắc nghiệm ...',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Epilogue'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '- 15 câu hỏi',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '- 30 phút làm bài',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '- 12/09/2023',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_4_outlined,
                      size: 12,
                    ),
                    Text(
                      'Phạm Anh Vũ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
