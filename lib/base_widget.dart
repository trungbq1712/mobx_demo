

import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {

  void init(dynamic data);

  Widget createView();
  
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments;
    init(arg);
    return createView();
  }
}