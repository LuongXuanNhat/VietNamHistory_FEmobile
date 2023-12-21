import 'dart:async' as Timer;
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../enums/status_type.dart';
import '../../../../get_it.dart';
import '../../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../../models/multiplechoice/response/multiple_choice_response.dart';
import '../../../../repositories/data_repository.dart';

part 'start_quiz_state.dart';
part 'start_quiz_cubit.freezed.dart';

class StartQuizCubit extends Cubit<StartQuizState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  StartQuizCubit()
      : super(const StartQuizState.initial(data: StartQuizStateData()));

  void onReady() {}

  void onClose() {
    if (state.data.timer != null) {
      state.data.timer!.cancel();
    }
  }

  void startTimer(int seconds) {
    int remainS = seconds;
    const duration = Duration(seconds: 1);
    Timer.Timer? timer;
    timer = Timer.Timer.periodic(duration, (Timer.Timer timer) {
      if (remainS == 0) {
        emit(StartQuizState.timer(data: state.data.copyWith(timer: timer)));
      } else {
        int minutes = remainS ~/ 60;
        int seconds = (remainS % 60);
        String time =
            '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
        remainS--;
        emit(StartQuizState.remainSeconds(
            data: state.data.copyWith(remainSeconds: remainS)));
      }
    });
  }

  Future<void> loadData(DetailQuizResponse quizPaper) async {
    if (quizPaper != null && quizPaper.resultObj.quizs.isNotEmpty) {
      emit(StartQuizState.detailQuiz(
          data: state.data.copyWith(
        listQuiz: quizPaper.resultObj.quizs,
        listQuizCurrent: quizPaper.resultObj.quizs,
      )));
      startTimer(quizPaper.resultObj.workTime);
    }
  }

  // void nextQuestion()
  // {
  //   if(state.data.questionIndex < state.data.listQuizCurrent.length - 1)
  //   {
  //     emit(StartQuizState.nextQuestion(data: state.data.copyWith(
  //       questionIndex: state.data.questionIndex + 1,
  //       listQuizCurrent:
  //     )));
  //   }
  // }
}
