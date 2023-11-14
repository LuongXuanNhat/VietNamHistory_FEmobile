import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/user/request/update_profile_request.dart';
import '../../../../repositories/data_repository.dart';
import '../../../../route_generator.dart';

part 'update_profile_state.dart';
part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  UpdateProfileCubit()
      : super(UpdateProfileState.initial(
            data: UpdateProfileStateData(transactionDate: DateTime.now())));

  void updateProfile({
    required String email,
    required String fullname,
    required String dateOfBirth,
    required int gender,
    required String introduction,
    required String phoneNumber,
  }) async {
    try {
      UIHelpers.showLoading();
      emit(UpdateProfileState.getError(data: state.data!.copyWith(error: '')));
      if (fullname.isEmpty) {
        emit(UpdateProfileState.getError(
            data: state.data!.copyWith(error: 'Họ tên không được để trống')));
      } else if (email.isEmpty) {
        emit(UpdateProfileState.getError(
            data: state.data!.copyWith(error: 'Email không được để trống')));
      } else if (gender == 3) {
        emit(UpdateProfileState.getError(
            data:
                state.data!.copyWith(error: 'Giới tính không được để trống')));
      } else if (phoneNumber.isEmpty) {
        emit(UpdateProfileState.getError(
            data: state.data!
                .copyWith(error: 'Số điện thoại không được để trống')));
      }
      final request = UpdateProfileRequest(
        email: email,
        fullname: fullname,
        dateOfBirth: dateOfBirth,
        gender: gender,
        phoneNumber: phoneNumber,
        introduction: introduction,
      );
      final response = await dataRepository.updateProfile(
        request: request,
      );
      if (response.success == true) {
        emit(UpdateProfileState.getError(
            data: state.data!.copyWith(error: response.message!, success: 1)));
        navigator!.pushReplacementNamed(RouteGenerator.accounsettingsScreen);
      } else {
        emit(UpdateProfileState.getError(
            data: state.data!.copyWith(error: response.message!)));
        navigator!.pop();
      }
    } catch (e) {
      debugPrint('Update Profile Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  int convertGenderToValue(String gender) {
    if (gender == 'Male') {
      return 1;
    } else if (gender == 'Female') {
      return 2;
    } else {
      return 0;
    }
  }

  void updateDateOfBirth(DateTime newDateOfBirth) {
    emit(UpdateProfileState.dateOfBirth(
        data: state.data!.copyWith(dateOfBirth: newDateOfBirth)));
  }

  void setTransactionDate(
    DateTime value,
  ) {
    emit(UpdateProfileState.setTransactionDate(
        data: state.data!.copyWith(transactionDate: value)));
  }
}
