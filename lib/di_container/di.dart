import 'package:get_it/get_it.dart';

import '../data/api/user_api.dart';
import '../data/repository/user_repository.dart';

Future<bool?>? startGetIt(GetIt getIt) async {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<UserRepository>(UserRepository());

  return null;
}
