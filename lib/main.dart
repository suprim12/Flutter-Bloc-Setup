import 'package:flutter/material.dart';
import './presentation/router/app_router.dart';
import 'config/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SiteConfig.app_name,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
