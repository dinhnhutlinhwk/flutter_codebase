import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:my_base_code/core/configs/logger_config.dart';
import 'package:my_base_code/data/models/auth/user.dart';
import 'package:my_base_code/app/common_controller/app_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class BaseController extends GetxController {
  final Logger logger = LoggerConfig.instance.logger;
  @protected
  final List<Worker> workers = [];

  AppLocalizations get l10n => AppLocalizations.of(Get.context!)!;
  final _isLoading = false.obs;
  final _errorMessage = ''.obs;

  User get currentUser => Get.find<AppController>().user!;
  bool get isLoading => _isLoading.value;
  String get errorMessage => _errorMessage.value;

  void setLoading(bool value) {
    _isLoading.value = value;
  }

  void setError({String message = ''}) {
    _errorMessage.value = message;
  }

  void runAction<T>({
    required Future<T> future,
    Function(Exception exception)? onError,
    Function(T response)? onSuccess,
    Function? onStart,
    Function? onComplete,
    bool isShowLoading = false,
  }) {
    if (isShowLoading) {
      setLoading(true);
    }
    if (onStart != null) {
      onStart();
    }
    future.then((response) {
      if (onSuccess != null) {
        onSuccess(response);
        return response;
      }
    }).catchError((error) {
      if (onError != null) {
        onError(error);
      } else {
        setError(message: error.toString());
      }
    }).whenComplete(() {
      if (isShowLoading) {
        setLoading(false);
      }
      if (onComplete != null) {
        onComplete();
      }
    });
  }

  @override
  void onClose() {
    for (var worker in workers) {
      worker.dispose();
    }
    super.onClose();
  }
}
