import 'dart:ui';

import 'package:ccl_services/ccl_services.dart';
import 'package:example/generated/l10n.dart';

class AppLocalizationService extends LocalizationService
    implements ILocalizationService {

  AppLocalizationService()
      : super(
          fallbackLocale: const Locale('en'),
          supportedLocales: S.delegate.supportedLocales,
        );

  @override
  Future<void> setLocale(Locale locale) async {
    await S.load(locale);
    await super.setLocale(locale);
  }
}
