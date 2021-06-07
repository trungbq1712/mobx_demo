import 'package:flutter/material.dart';

abstract class BaseModel {

  BuildContext? _ctx;
  BuildContext get ctx => _ctx!;

  void setContext(BuildContext context) {
    _ctx = context;
  }

  //This function to load static from local or remote, e.g. dropdown  
  void initData(dynamic? data);
}
