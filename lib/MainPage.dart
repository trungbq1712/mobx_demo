import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/ListItems.dart';
import 'package:mobx_demo/base/base_widget.dart';
import 'package:mobx_demo/components/select_component.dart';
import 'package:mobx_demo/counter.dart';
import 'package:mobx_demo/select_item.dart';
import 'package:provider/provider.dart';

class MainPage extends BaseWidget<Counter> {

  Widget _appBar() {
    print("Build appbar");
    return AppBar(
      title: Text('MobX Counter'),
    );
  }

  Widget _text() {
    print("Build text");
    return Text(
      'You have pushed the button this many times:',
    );
  }

  Widget _number() {
    print("Build number outside");
    return Observer(
      builder: (_) {
        print("Build number inside");
        return  Text(
          '${model.value}'
        );
      },
    );
  }

  SelectItem? item;

  Widget _buildSelect() {
    return SelectComponent(new ObservableList.of(
      List.generate(5, (index) => new SelectItem(() {}, index, text: "item $index" ))),
      onItemSelected: (item) => model.choose(item),
    );
  }

  @override
  Widget createView() {
    
    return Scaffold(
      appBar: _appBar() as PreferredSizeWidget,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _number(),
            _buildSelect(),
            IconButton(icon: Icon(
                Icons.navigate_next
              ), 
            onPressed: () {
              model.navigate();
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: model.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void init(data) {
  }

  @override
  Counter get model => _model;
  final Counter _model = Counter();
}
