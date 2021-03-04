import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

// STATE
class ThemeState {
  final ThemeMode themeMode;
  ThemeState({this.themeMode});
}

// CUBIT
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light));
}
