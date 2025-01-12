import 'package:example/generated/l10n.dart';
import 'package:example/services/app_localization_service.dart';
import 'package:flutter/material.dart';
import 'package:example/app/app.bottomsheets.dart';
import 'package:example/app/app.dialogs.dart';
import 'package:example/app/app.locator.dart';
import 'package:example/app/app.router.dart';
import 'package:ccl_ui/ccl_ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CCLLocalization(
      childBuilder: (BuildContext context) => CCLUiConfigurator(
        settings: CCLUiSettings(
          backgroundProgressSettings: BackgroundProgressSettings(
            backgroundColor: context.colors.surface.withValues(alpha: 0.3),
          )
        ),
        builder: (context) {
          return MaterialApp(
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
            locale: locator.get<AppLocalizationService>().locale,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
