import 'package:flutter/material.dart';

abstract class AppContext {
  BuildContext? _rootContext;
  BuildContext get rootContext => _rootContext!;

  void intContext(BuildContext c) {
    _rootContext = c;
  }
}