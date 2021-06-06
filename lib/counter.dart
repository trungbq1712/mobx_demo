import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/ListItems.dart';
import 'package:mobx_demo/base/base_model.dart';
import 'package:mobx_demo/select_item.dart';

part 'counter.g.dart';

class Counter extends CounterBase with _$Counter {
  void choose(SelectItem item) {
    print("Select item : ${item.text}");
  }

  void navigate() {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => ListItems(),
      settings: RouteSettings(
        arguments: {
          "text": value
        }
      )
    ));
  }

  @override
  void initData(data) {
    
  }
}

abstract class CounterBase extends BaseModel with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void decrease() {
    value--;
  }
}
