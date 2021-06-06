import 'package:mobx/mobx.dart';
import 'package:mobx_demo/select_item.dart';

part 'counter.g.dart';

class Counter extends CounterBase with _$Counter {
  void choose(SelectItem item) {
    print("Select item : ${item.text}");
  }
}

abstract class CounterBase with Store {
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
