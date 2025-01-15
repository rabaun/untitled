import 'package:get_it/get_it.dart';

import '../api/user_api.dart';
import '../models/user_model.dart';

class UserRepository {
  List<UserModel>? user;

  late ApiService service;

  UserRepository() {
    service = GetIt.instance<ApiService>();
  }

  Future<UserRepository> init() async {
    await fetch();
    return this;
  }

  Future<List<UserModel>?> fetch() async {
    service = ApiService();
    final response = await service.fetch();
    user = response;
    return user;
  }
}
