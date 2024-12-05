import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulselab/src/constants/app_constants.dart';
import 'package:pulselab/src/view/main_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.name,
      locale: const Locale("pt", "BR"),
      localizationsDelegates: const [
        DefaultWidgetsLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0x00A61723),
        ),
        useMaterial3: true,
      ),
      home: const MainView(),
    );
  }
}
