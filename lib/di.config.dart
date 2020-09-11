// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';
import 'data.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule(get);

  // Eager singletons must be registered in the right order
  gh.singleton<UserRepo>(appModule.userRepo);
  gh.singleton<DataRepo>(appModule.dataRepo);
  return get;
}

class _$AppModule extends AppModule {
  final GetIt _get;
  _$AppModule(this._get);
  @override
  UserRepoImpl get userRepo => UserRepoImpl();
  @override
  DataRepoImpl get dataRepo => DataRepoImpl(userRepo: _get<UserRepo>());
}
