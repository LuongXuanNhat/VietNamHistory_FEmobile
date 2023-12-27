import 'package:flutter/material.dart';

import '../models/history_exam/response/list_history_myexam.dart';

class MyDrawer extends StatelessWidget {
  final ListHistoryMyExam? data;
  const MyDrawer({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text('Lịch sử làm bài',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Epilogue')),
              const Divider(
                color: Colors.black,
              ),
              SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  itemCount: data!.resultObj!.length,
                  itemBuilder: (context, index) {
                    double doubleValue =
                        data!.resultObj![index].scores!.toDouble() / 100.0;
                    return ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/images/icon_his.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                                '${data!.resultObj![index].multipleChoiceResponseDto!.title}',
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Epilogue')),
                          ),
                        ],
                      ),
                      subtitle: Text('Điểm: ${doubleValue.toStringAsFixed(2)}'),
                      trailing: Text(
                          'Thời gian: ${data!.resultObj![index].completionTime} phút'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
