import 'package:flutter/material.dart';

import 'config/app.dart';
import 'config/di/di.dart';

void main() async {
  await configureDependencies();
  runApp(const App());
}