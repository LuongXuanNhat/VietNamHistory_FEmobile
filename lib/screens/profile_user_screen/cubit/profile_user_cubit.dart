import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../get_it.dart';
import '../../../models/user/response/user_response.dart';
import '../../../repositories/data_repository.dart';

part 'profile_user_state.dart';
part 'profile_user_cubit.freezed.dart';

class ProfileUserCubit extends Cubit<ProfileUserState> {
  final _dataRepository = getIt<DataRepository>();
  ProfileUserCubit()
      : super(const ProfileUserState.initial(data: ProfileUserStateData()));
}
