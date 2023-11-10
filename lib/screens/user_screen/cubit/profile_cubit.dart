import 'dart:convert';
import 'dart:developer';

import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';

import '../../../models/user/request/update_profile_request.dart';
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
      UIHelpers.showLoading();
      final response = await dataRepository.loggedIn();
      emit(Profile(data: state.data!.copyWith(userResponse: response)));
    } catch (e) {
      debugPrint('Get Profile Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getImage() async {
    try {
      final response = await dataRepository.getImage();
      String base64StringWithQuotes = response.toString();
      String base64String = base64StringWithQuotes.replaceAll('"', '');
      final imageBytes = base64.decode(base64String);
      emit(ProfileState.bytes(data: state.data!.copyWith(bytes: imageBytes)));
    } catch (e) {
      debugPrint('Get Image Error: $e');
    } finally {
      UIHelpers.dismissLoading();
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

  Future<String> imageToBase64(String imagePath) async {
    // Đọc tệp hình ảnh thành mảng bytes.
    File imageFile = File(imagePath);
    Uint8List bytes = await imageFile.readAsBytes();

    // Mã hóa mảng bytes thành chuỗi base64.
    String base64Image = base64Encode(bytes);

    return base64Image;
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
