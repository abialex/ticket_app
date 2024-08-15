// ignore_for_file: lines_longer_than_80_chars, cascade_invocations

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:window_size/window_size.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await runZonedGuarded(
    () async {
      // AppDependencyInjection().setup();
      WidgetsFlutterBinding.ensureInitialized();
      // await SharedPreferencesService.init();
      // await Firebase.initializeApp(options: options);

      if (TargetPlatform.windows == defaultTargetPlatform ||
          TargetPlatform.macOS == defaultTargetPlatform ||
          TargetPlatform.linux == defaultTargetPlatform) {
        //setWindowTitle('WS');
        setWindowMinSize(const Size(500, 700));
        setWindowMaxSize(const Size(500, 700));
      }

      //eliminar datos si existe la base de datos
      //await AppStoreProvider.instance.deleteDatabase();
      //store
      // await AppStoreProvider.instance.initializeStore();

      // final objectboxSyncConfigurationService = getItApp.get<ObjectboxSyncConfigurationService>();
      // objectboxSyncConfigurationService.initSetup();

      //notification
      // final pushProvider = PushNotificationProvider();
      // await pushProvider.initNotifications();

      //posicion de direccion del aplicativo
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async {
        runApp(await builder());
      });
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
