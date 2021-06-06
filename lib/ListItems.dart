import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/base/base_widget.dart';
import 'package:mobx_demo/item.dart';
import 'package:mobx_demo/item_source.dart';
import 'package:mobx_demo/item_template.dart';

class ListItems extends BaseWidget<ItemSource> {
  
  @override
  ItemSource get model => _model;
  final ItemSource _model = ItemSource();

  @override
  void init(dynamic data) {
    model.initData(null);
  }

  @override
  Widget createView() {
    return Scaffold(
      appBar: _appBar() as PreferredSizeWidget,
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var item = Item(() {})
          ..text = "added text"
          ..value = "added value";
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
    print("Build body");
    return Stack(
      children: [
        collectionItems(),
        _loading()
      ],
    );
  }

  Widget collectionItems() {
    return Observer(builder: (c) {
      print("Build list view");
      return ListView.builder(
        cacheExtent: 20,
        itemBuilder: (c, idx) {
          var item = model.items[idx];
          return ItemTemlate(item, () => model.select(item));
        },
        itemCount: model.totalItems
      ); }
    );
  }

  Widget _loading() {
    return Observer(builder: (c){
      return Visibility(
        visible: model.isBusy,
        child: CircularProgressIndicator());
    });
  }

}