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

import '../../../env.dart' as _i4;
import '../network_info/network_info.dart' as _i7;
import '../push_notification/fcm_service.dart' as _i5;
import '../push_notification/local_notification_service.dart' as _i8;
import '../storage/hive_storage.dart' as _i6;
import 'dio_client_di.dart' as _i9;

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
  final dioInjection = _$DioInjection();
  gh.factory<_i3.Dio>(() => dioInjection.dio(gh<_i4.Env>()));
  gh.lazySingletonAsync<_i5.FCMService>(() => _i5.FCMService.instance());
  gh.singleton<_i6.HiveStorage>(_i6.HiveStorage());
  gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfo());
  gh.lazySingletonAsync<_i8.NotificationService>(
      () => _i8.NotificationService.instance());
  return getIt;
}

class _$DioInjection extends _i9.DioInjection {}
