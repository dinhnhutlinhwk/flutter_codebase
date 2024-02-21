// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_base_code/core/services/dependency_injection/dio_client_di.dart'
    as _i11;
import 'package:my_base_code/core/services/network_info/network_info.dart'
    as _i8;
import 'package:my_base_code/core/services/push_notification/fcm_service.dart'
    as _i4;
import 'package:my_base_code/core/services/push_notification/local_notification_service.dart'
    as _i9;
import 'package:my_base_code/core/services/storage/hive_storage.dart' as _i5;
import 'package:my_base_code/data/remote/base_api.dart' as _i10;
import 'package:my_base_code/data/repository/home_repository.dart' as _i6;
import 'package:my_base_code/data/repository/impls/home_repository_impl.dart'
    as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final mainModule = _$MainModule();
  gh.lazySingleton<_i3.Dio>(() => mainModule.dio());
  gh.lazySingletonAsync<_i4.FCMService>(() => _i4.FCMService.instance());
  gh.singleton<_i5.HiveStorage>(_i5.HiveStorage());
  gh.lazySingleton<_i6.HomeRepository>(() => _i7.HomeRepositoryImpl());
  gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfo());
  gh.lazySingletonAsync<_i9.NotificationService>(
      () => _i9.NotificationService.instance());
  gh.lazySingleton<_i10.BaseApi>(() => _i10.BaseApi(gh<_i3.Dio>()));
  return getIt;
}

class _$MainModule extends _i11.MainModule {}
