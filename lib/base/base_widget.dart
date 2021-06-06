import 'package:flutter/material.dart';
import 'package:mobx_demo/base/base_model.dart';

abstract class BaseWidget<T extends BaseModel> extends StatelessWidget {

  T get model;

  /// This function is to load local or remote resources at view level
  /// 
  /// It's run before the function createView
  void init(dynamic data);


  /// This function is create view, should create UI here.
  Widget createView();
  
  @protected
  @override
  Widget build(BuildContext context) {
    model.setContext(context);
    var arg = ModalRoute.of(context)!.settings.arguments;
    init(arg);
    return createView();
  }
}