import 'package:flutter/cupertino.dart';
import 'package:flutter_core/widgets/main_widget.dart';

final Map<String, WidgetBuilder> kAppRoutes = {
  MainWidget.appRoute: (_) => const MainWidget()
};