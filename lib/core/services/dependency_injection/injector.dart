import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  // preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureInjection() async => $initGetIt(getIt);
