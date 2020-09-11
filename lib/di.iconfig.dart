// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:new_test/di.dart';
import 'package:new_test/data.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final appModule = _$AppModule(g);

  //Eager singletons must be registered in the right order
  g.registerSingleton<UserRepo>(appModule.userRepo);
  g.registerSingleton<DataRepo>(appModule.dataRepo);
}

class _$AppModule extends AppModule {
  final GetIt _g;
  _$AppModule(this._g);
  @override
  UserRepoImpl get userRepo => UserRepoImpl();
  @override
  DataRepoImpl get dataRepo => DataRepoImpl(userRepo: _g<UserRepo>());
}
