import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/user/request/change_password_response.dart';
import '../../../repositories/data_repository.dart';

part 'change_pass_state.dart';
part 'change_pass_cubit.freezed.dart';

class ChangePassCubit extends Cubit<ChangePassState> {
  final _dataRepository = getIt<DataRepository>();
  ChangePassCubit() : super(const ChangePassState.initial());

  Future<void> changePassword(
      {required String? email,
      required String? newPassword,
      String? currentPassword}) async {
    try {
      final request = ChangePasswordRequest(
        email: email,
        newPassword: newPassword,
        currentPassword: currentPassword,
      );
      final response = await _dataRepository.changePassword(request: request);
      if (response.isNotEmpty) {
        await UIHelpers.showSnackBar(message: 'Thay đổi mật khẩu thành công');
        await Future.delayed(const Duration(seconds: 1), () {
          Get.back();
        });
      }
    } catch (e) {
      UIHelpers.showSnackBar(message: e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
