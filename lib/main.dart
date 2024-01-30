import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_core/routes.dart';
import 'package:flutter_core/widgets/main_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp
  ]);
  runApp(const Application());
}

class Application extends StatelessWidget {

  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return _ApplicationExact();
  }

}

class _ApplicationExact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: kAppRoutes,
      initialRoute: MainWidget.appRoute,
    );
  }

}
