import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(StolbyApp());
}
