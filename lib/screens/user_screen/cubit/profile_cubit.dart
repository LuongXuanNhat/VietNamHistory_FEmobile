import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';

import '../../../models/user/response/user_response.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  ProfileCubit() : super(const ProfileState.initial(data: ProfileStateData()));

  Future<void> getProfile() async {
    try {
      final response = await dataRepository.loggedIn();
      emit(Profile(data: state.data!.copyWith(userResponse: response)));
    } catch (e) {
      debugPrint('Get Profile Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getImage() async {
    final response = await dataRepository.getImage();
    if (response.isNotEmpty) {
      emit(ProfileState.urlImage(
          data: state.data!.copyWith(urlImage: response)));
    } else {
      emit(ProfileState.getError(
          data: state.data!
              .copyWith(error: 'Lấy ảnh đại diện không thành công!')));
    }
  }

  Future<void> updateAvatar() async {
    final response =
        await dataRepository.updateAvatar(image: state.data?.image);
    if (response.isNotEmpty) {
      emit(ProfileState.getError(
          data: state.data!.copyWith(error: response.toString())));
    }
    emit(ProfileState.getError(
        data: state.data!
            .copyWith(error: 'Cập nhập ảnh đại diện không thành công!')));
  }

  Future<void> selectImage(ImageSource? source) async {
    final image = await ImagePicker().pickImage(source: source!);
    emit(ProfileState.getImage(
        data: state.data!.copyWith(image: File(image!.path))));
  }

  void logout() async {
    try {
      UIHelpers.showLoading();
      await appPref.logout();
      navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.loginScreen, (route) => false);
    } catch (e) {
      debugPrint('Logout Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void updateGender(String newGender) {
    final genderValue = convertGenderToValue(newGender);
    emit(ProfileState.gender(data: state.data!.copyWith(gender: genderValue)));
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
    emit(ProfileState.dateOfBirth(
        data: state.data!.copyWith(dateOfBirth: newDateOfBirth)));
  }

  void setTransactionDate(
    DateTime value,
  ) {
    emit(ProfileState.setTransactionDate(
        state.data!.copyWith(transactionDate: value)));
  }
}
