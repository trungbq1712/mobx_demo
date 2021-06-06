import 'package:mobx/mobx.dart';
import 'package:mobx_demo/base_model.dart';
import 'package:mobx_demo/item.dart';

part 'item_source.g.dart';

class ItemSource extends ItemSourceBase with _$ItemSource {

  Future _init() async {
    setBusy(true);
    Future.delayed(Duration(seconds: 5)).then((_) {
      print("done!");
      items = ObservableList.of(List.generate(1000, (idx) {
        var item = Item(() { print("Click item $idx"); })
        ..text = "text $idx"
        ..value = '$idx';
        return item;
      }));
      setBusy(false);
    });
  }

  void select(Item item) {
    if(item.value == "2") {
      item.tick();
    }
  }

  @override
  void initData(data) {
    _init();
  }
}

abstract class ItemSourceBase extends BaseModel with Store {

  @observable
  bool isBusy = false;

  @observable
  ObservableList<Item> items = ObservableList();

  @action
  void setBusy(bool value) {
    isBusy = value;
  }

  @action
  void add(Item item) {
    items.insert(0, item);
  }

  @action
  void remove(int idx) {
    items.removeAt(idx);
  }

  @computed
  int get totalItems { return items.length; }
}


