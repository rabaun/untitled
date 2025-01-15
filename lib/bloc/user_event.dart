import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/user_model.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetch() = InitialUserEvent;

  const factory UserEvent.add({
    required List<UserModel>? user,
  }) = AddUserEvent;
}
