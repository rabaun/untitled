import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/bloc/user_event.dart';
import 'package:untitled/bloc/user_state.dart';

import '../data/models/user_model.dart';
import '../data/repository/user_repository.dart';
import '../main.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  late UserRepository userRepo;
  List<UserModel>? user;

  UserBloc(this.userRepo) : super(const UserState.initial()) {
    on<InitialUserEvent>(_onInitialUserEvent);
    on<AddUserEvent>(onAddUserEvent);
  }

  void _onInitialUserEvent(
    InitialUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const LoadingUserState());
    try {
      userRepo = getIt.get<UserRepository>();
      user = userRepo.user ??= await userRepo.fetch();
    } on Exception {
      if (kDebugMode) {
        print("Error");
      }
    }
    emit(
      DataUserState(
        user: user,
      ),
    );
  }

  void onAddUserEvent(
    AddUserEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      final response = await userRepo.fetch();
      if (response != null) {
        user = userRepo.user;
      }
    } on Exception {
      if (kDebugMode) {
        print("Error");
      }
    }
    emit(
      DataUserState(
        user: user,
      ),
    );
  }
}
