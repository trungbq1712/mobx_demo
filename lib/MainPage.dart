import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/ListItems.dart';
import 'package:mobx_demo/components/select_component.dart';
import 'package:mobx_demo/counter.dart';
import 'package:mobx_demo/select_item.dart';

class MainPage extends StatelessWidget {

  final counter = Counter();
  
  @override
  Widget build(BuildContext context) {
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
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListItems(),
                settings: RouteSettings(
                  arguments: {
                    "text": counter.value
                  }
                )
              )
            );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

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
          '${counter.value}'
        );
      },
    );
  }

  SelectItem? item;

  Widget _buildSelect() {
    return SelectComponent(new ObservableList.of(
      List.generate(5, (index) => new SelectItem(() {}, index, text: "item $index" ))
    ),
    onItemSelected: (item) => counter.choose(item),
    );
  }
}
