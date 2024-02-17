import 'dart:async';
import 'package:get/get.dart';
import 'package:my_base_code/data/models/auth/user.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';
import 'package:my_base_code/core/services/storage/hive_storage.dart';

class AppController extends GetxController {
  final HiveStorage _hiveStorage = getIt<HiveStorage>();
  final List<Worker> _workers = [];
  final Completer<void> _completer = Completer<void>();

  final _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;
  void setDarkMode(bool value) {
    _isDarkMode.value = value;
  }

  final _user = Rx<User?>(null);
  User? get user => _user.value;
  void setUser(User? user) {
    _user.value = user;
  }

  @override
  void onInit() {
    _setupFirstLoad();
    super.onInit();
  }

  void _setupFirstLoad() {
    try {
      final userWorker = ever<User?>(_user, (user) {
        if (user != null) {
          _hiveStorage.updateUser(user);
        } else {
          _hiveStorage.deleteUser();
        }
      });
      _workers.add(userWorker);
    } finally {
      _completer.complete();
    }
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker.dispose();
    }
    super.onClose();
  }
}
