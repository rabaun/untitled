import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_user.dart';
import '../bloc/body.dart';
import '../bloc/user_state.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Список пользователей")),
          centerTitle: true, // this is all you need
        ),
        body: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const Column(
                children: [
                  LinearProgressIndicator(),
                ],
              ),
              data: (data) {
                return UserBody(
                  users: data.user,
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ));
  }
}
