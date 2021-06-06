
import 'package:mobx/mobx.dart';

part 'select_item.g.dart';

class SelectItem extends SelectItemBase with _$SelectItem {
  SelectItem(this.onSelect, this.value, {this.text});
  String? text;
  int value;
  Function onSelect;
}

abstract class SelectItemBase with Store {

  @observable
  bool isSelected = false;

  @action
  void select() {
    isSelected = true;
  }
  
  @action
  void unSelect() {
    isSelected = false;
  }
}