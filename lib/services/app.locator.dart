import 'package:geometry_dash/services/settings_service.dart';
// ignore: depend_on_referenced_packages
import 'package:stacked/stacked_annotations.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => SettingsService());
}
