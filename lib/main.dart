import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'application.dart';
import 'blocs/blocs.dart';
import 'firebase_configs.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FirebaseConfigs firebaseConfigs = FirebaseConfigs();
  await firebaseConfigs.initialize();
  Bloc.observer = AppBlocObserver();
  runApp(const Application());
}
