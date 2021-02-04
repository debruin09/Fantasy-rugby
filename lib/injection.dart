import 'package:super_rugby_fantasy/application/theme/theme_bloc.dart';
import 'package:super_rugby_fantasy/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

const USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  // locator.registerLazySingleton<PlayerProvider>(() => PlayerProvider());
  // locator.registerLazySingleton<Team>(() => Team());
  locator.registerFactory<ThemeBloc>(() => ThemeBloc());
}

@injectableInit
void configureInjection(String env) {
  $initGetIt(locator, environment: env);
}
