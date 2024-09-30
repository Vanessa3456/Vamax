import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vamax/modules/phones.dart';
import 'package:vamax/routes.dart';
import 'package:vamax/themes/light_mode.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=>Phones(),
      child: const MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamax',
      onGenerateRoute: (route) => Routes.routeMaker(route),
      initialRoute: '/home',
      theme: lightMode,

    );
  }
}
