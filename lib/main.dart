import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portofolioku/modules/app_module.dart';
import 'package:portofolioku/providers/web_providers.dart';
import 'package:provider/provider.dart';
import 'package:portofolioku/screens/screens.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => WebProvider(),
      )
    ],
    child: ModularApp(
      module: AppModule(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Home(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
      // initialRoute: '/',
      title: 'Portofolioku',
    );
  }
}
