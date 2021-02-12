import 'package:flutter/material.dart';
import './presentation/router/app_router.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.black,
        accentColor: Colors.black
      ),
      initialRoute: AppRouter.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}

