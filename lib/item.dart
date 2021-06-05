import 'package:mobx/mobx.dart';

part 'item.g.dart';

class Item extends ItemBase with _$Item {
  Item(this.onSelect);
  String? text;
  String? value;
  Function onSelect;
}

abstract class ItemBase with Store {

  @observable
  bool check = false;

  @action
  void tick() {
    check = !check;
  }

}
