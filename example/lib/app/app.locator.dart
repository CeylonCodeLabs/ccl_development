// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:ccl_services/ccl_services.dart';
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/app_localization_service.dart';
import '../services/app_secure_storage_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  final secureStorageService = SecureStorageService();
  await secureStorageService.init();
  locator.registerSingleton(secureStorageService);

  final localizationService = LocalizationService();
  await localizationService.init();
  locator.registerSingleton(localizationService);

  final appSecureStorageService = AppSecureStorageService();
  await appSecureStorageService.init();
  locator.registerSingleton(appSecureStorageService);

  final appLocalizationService = AppLocalizationService();
  await appLocalizationService.init();
  locator.registerSingleton(appLocalizationService);

  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
}
