import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
    final response = await dataRepository.loggedIn();
    emit(Profile(data: state.data!.copyWith(userResponse: response)));
  }

  Future<void> updateProfile(
      {required String? email,
      required String? fullname,
      required String? dateOfBirth,
      required String? gender,
      required String? phoneNumber,
      required FileImage? image}) async {
    try {
      final request = UpdateProfileRequest(
          email: 'vuanhpham25@gmail.com',
          fullname: 'phamanhvu',
          dateOfBirth: '2002/03/25',
          gender: '0',
          phoneNumber: '0583345803',
          image: "");
      final response = await dataRepository.updateProfile(request: request);
      if (response.success == true) {
        emit(Error(
            data: state.data!.copyWith(error: response.message!, success: 1)));
      } else {
        emit(Error(data: state.data!.copyWith(error: response.message!)));
      }
    } catch (e) {
      debugPrint('Update Profile Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
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
}
