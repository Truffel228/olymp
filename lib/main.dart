import 'dart:async';
import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/config.dart';
import 'package:fin_assistant/notifx.dart';
import 'package:fin_assistant/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: const Duration(seconds: 10),
  ));

  await FirebaseRemoteConfig.instance.fetchAndActivate();

  await NotificationServiceFb().activate();
  final sharedPrefs = await SharedPreferences.getInstance();

  final StreamController<bool> updateBalanceStream =
      StreamController<bool>.broadcast();

  runApp(MyApp(sharedPrefs, updateBalanceStream));
}

class MyApp extends StatefulWidget {
  const MyApp(this._sharedPrefs, this._stream, {super.key});

  final SharedPreferences _sharedPrefs;
  final StreamController<bool> _stream;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    widget._stream.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: widget._stream,
      child: Provider.value(
        value: widget._sharedPrefs,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.theme,
          routerConfig: Routes.router,
        ),
      ),
    );
  }
}
