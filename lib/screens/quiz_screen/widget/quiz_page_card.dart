import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/material.dart';

import '../../../common/global_styles.dart';
import '../../../common/icon_with_text.dart';
import '../../../common/ui_parameters.dart';

class QuizPageCard extends StatelessWidget {
  final String title;
  final int numberQuestion;
  final int time;
  final VoidCallback onTap;
  const QuizPageCard(
      {super.key,
      required this.title,
      required this.numberQuestion,
      required this.time,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    const double padding = 10.0;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 2), blurRadius: 4)
          ]),
      child: InkWell(
        onTap: onTap,
        child: Padding(
            padding: const EdgeInsets.all(padding),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: ColoredBox(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            'assets/images/quizz.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: cardTitleTs(context),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: EasySeparatedRow(
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 15);
                            },
                            children: [
                              IconWithText(
                                  icon: Icon(Icons.help_outline_sharp,
                                      color: Colors.blue[700]),
                                  text: Text(
                                    '$numberQuestion câu hỏi',
                                    style: kDetailsTS.copyWith(
                                        color: Colors.blue[700]),
                                  )),
                              IconWithText(
                                  icon: const Icon(Icons.timer_outlined,
                                      color: Colors.blueGrey),
                                  text: Text(
                                    '$time phút',
                                    style: kDetailsTS.copyWith(
                                        color: Colors.blueGrey),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
