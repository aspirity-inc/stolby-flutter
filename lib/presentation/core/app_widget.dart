import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class StolbyApp extends StatelessWidget {
  final _router = AppRouter();

  StolbyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stolby',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
    );
  }
}
