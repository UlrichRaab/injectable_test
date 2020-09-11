import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data.dart';
import 'di.config.dart';

@injectableInit
Future<bool> initDependencyInjection() async {
  try {
    print('Initialize dependency injection');
    final getIt = GetIt.instance;
    /*
    getIt.registerSingleton<UserRepo>(UserRepoImpl());
    getIt.registerSingleton<DataRepo>(DataRepoImpl(
      userRepo: getIt<UserRepo>(),
    ));
    */
    $initGetIt(getIt);
    return true;
  } catch (e) {
    print('Initializing dependency injection failed');
    return false;
  }
}

@module
abstract class AppModule {
  @Singleton(as: UserRepo)
  UserRepoImpl get userRepo;

  @Singleton(as: DataRepo)
  DataRepoImpl get dataRepo;
}
