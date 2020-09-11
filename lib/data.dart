abstract class DataRepo {
  Future<String> getData();
}

class DataRepoImpl extends DataRepo {
  DataRepoImpl({
    this.userRepo,
  });

  final UserRepo userRepo;

  @override
  Future<String> getData() async {
    final name = await userRepo.getName();
    return 'Hello $name';
  }
}

abstract class UserRepo {
  Future<String> getName();
}

class UserRepoImpl extends UserRepo {
  @override
  Future<String> getName() async {
    return 'Hans';
  }
}
