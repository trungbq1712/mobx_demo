import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/base_widget.dart';
import 'package:mobx_demo/item.dart';
import 'package:mobx_demo/item_source.dart';
import 'package:mobx_demo/item_template.dart';

class ListItems extends BaseWidget {
  
  final model = ItemSource();

  @override
  void init(dynamic data) {
    model.initData(null);
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget createView() {
    return Scaffold(
      appBar: _appBar() as PreferredSizeWidget,
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var item = Item(() {});
          model.add(item);
        },
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _appBar() {
    print("Build appbar");
    return AppBar(
      centerTitle: true,
      title: Text("Example"),
    );
  }

  Widget _body() {
    print("Build list view");
    return Observer(
      builder: (c) {
        return Stack(
          children: [
            ListView.builder(
              itemBuilder: (c, idx) {
                var item = model.items[idx];
                return ItemTemlate(item, () => model.select(item));
              },
              itemCount: model.totalItems
            ),
            Visibility(
              visible: model.isBusy,
              child: CircularProgressIndicator())
          ],
        );
      }
    );
  }

}