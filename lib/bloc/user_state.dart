import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/user_model.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _InitialUserState;

  const factory UserState.loading() = LoadingUserState;

  const factory UserState.data({
    required List<UserModel>? user,
  }) = DataUserState;
}
