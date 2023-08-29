import 'package:flutter/material.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(StolbyApp());
}
