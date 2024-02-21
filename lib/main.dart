import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_base_code/presentation/bindings/init_binding.dart';
import 'package:my_base_code/core/configs/locale_config.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';
import 'package:my_base_code/presentation/routers/app_router.dart';
import 'package:my_base_code/core/services/storage/hive_key.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(StorageKey.setting);
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Code Base',
      navigatorKey: navigatorKey,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: LocaleConfig.supportedLocales,
      locale: Get.deviceLocale,
      initialBinding: InitBinding(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRouter.initScreen,
      getPages: AppRouter.routes(),
    );
  }
}
