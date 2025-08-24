import 'package:get_it/get_it.dart';
import '../api/api.dart';
import '../cache/local_cache.dart';

GetIt serviceLocator = GetIt.instance;

  setupServiceLocator() {
  // Register Cache
  serviceLocator.registerLazySingleton<LocalCache>(() => LocalCache());

  // Register API
  serviceLocator.registerLazySingleton<API>(() => API());
}
