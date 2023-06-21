import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product/constants/app/app_constants.dart';
import 'product/cache/locale_manager.dart';
import 'product/lang/language_manager.dart';
import 'product/navigation/navigation_router.dart';
import 'product/navigation/navigation_service.dart';
import 'product/notifier/app_provider.dart';
import 'product/theme/theme_notifier.dart';

void main() {
  LocaleManager.prefrencesInit();
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: EasyLocalization(
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: ApplicationConstants.LANG_ASSET_PATH,
        startLocale: LanguageManager.instance.enLocale,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates, // Localization
      locale: LanguageManager.instance.enLocale,
      supportedLocales: LanguageManager.instance.supportedLocales,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: context.watch<ThemeNotifier>().currentTheme,
      home: const Scaffold(),
    );
  }
}
