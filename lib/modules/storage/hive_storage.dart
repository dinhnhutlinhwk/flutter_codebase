import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/modules/storage/hive_key.dart';

@singleton
class HiveStorage {
  final Box box;
  HiveStorage() : box = Hive.box(StorageKey.setting);

  //Alway write 3 methods: get - update - delete
  String get token => box.get(StorageKey.token, defaultValue: '');
  Future<void> updateToken(String token) async =>
      await box.put(StorageKey.token, token);
  void deleteToken() => box.delete(StorageKey.token);

  void clearAll() => box.clear();
}
