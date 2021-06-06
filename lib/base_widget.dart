

import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {

  /// This function is to load local or remote resources.
  /// 
  /// It's run before the function createView
  void init(dynamic data);


  /// This function is create view, should create UI here.
  Widget createView();
  
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments;
    init(arg);
    return createView();
  }
}