import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/question/response/listquestionresponse.dart';
import '../../../../models/question/response/questionresponse.dart';
import '../../../../models/user/user_pres.dart';
import '../../../../repositories/data_repository.dart';
import '../../../../route_generator.dart';

part 'create_question_state.dart';
part 'create_question_cubit.freezed.dart';

class CreateQuestionCubit extends Cubit<CreateQuestionState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();

  CreateQuestionCubit()
      : super(
            const CreateQuestionState.initial(data: CreateQuestionStateData()));

  Future<void> createQuestion(
      {required String title,
      required String content,
      required List<String> tags}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.createQuestion(
          title: title, content: content, tag: tags);
      if (response.isSuccessed == true) {
        emit(CreateQuestionState.createQuestion(
            data: state.data.copyWith(questionResponse: response)));
        navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.mainScreen,
          arguments: {
            'currentIndex': 1,
          },
          (route) => false,
        );
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> loadUser() async {
    try {
      UIHelpers.showLoading();
      Map<String, String> userData = await UserPreferences.getUser();
      final response = await dataRepository.getImage();
      emit(CreateQuestionState.loadImage(
          data: state.data.copyWith(image: response.resultObj!)));
      emit(CreateQuestionState.loadFullName(
          data: state.data.copyWith(fullName: userData['name']!)));
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
