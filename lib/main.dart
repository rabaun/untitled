import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled/screen/user_screen.dart';

import 'bloc/bloc_user.dart';
import 'bloc/user_event.dart';
import 'data/repository/user_repository.dart';
import 'di_container/di.dart';

late GetIt getIt;

void main() async {
  getIt = GetIt.instance;
  await startGetIt(getIt);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository = UserRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
            create: (context) => UserBloc(userRepository)..add(const UserEvent.fetch()))
      ],
      child: MaterialApp(
        title: 'User List',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: UserScreen(),
      ),
    );
  }
}
