import 'package:ccl_services/ccl_services.dart';
import 'package:example/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:example/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:example/ui/views/home/home_view.dart';
import 'package:example/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:example/services/app_secure_storage_service.dart';
import 'package:example/services/app_localization_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    InitializableSingleton(classType: SecureStorageService),
    InitializableSingleton(classType: LocalizationService),
    InitializableSingleton(classType: AppSecureStorageService),
    InitializableSingleton(classType: AppLocalizationService),
    InitializableSingleton(classType: NotificationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
