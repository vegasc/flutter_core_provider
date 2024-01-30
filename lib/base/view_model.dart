import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class ViewModel {

  static T get<T>(BuildContext context) => Provider.of<T>(context, listen: false);

  void dispose();

}