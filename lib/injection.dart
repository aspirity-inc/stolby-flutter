import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() => getIt.init();
