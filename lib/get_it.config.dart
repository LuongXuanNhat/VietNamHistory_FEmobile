// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/storage/app_prefs.dart' as _i3;
import 'get_it.dart' as _i5;
import 'repositories/data_repository.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i3.AppPref>(
    () => appModule.appPrefs,
    preResolve: true,
  );
  gh.lazySingleton<_i4.DataRepository>(() => _i4.DataRepository());
  return getIt;
}

class _$AppModule extends _i5.AppModule {}
