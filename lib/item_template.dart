import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/item.dart';

class ItemTemlate extends StatelessWidget {

  final Item source;
  final Function onSelect;
  ItemTemlate(this.source, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        print("Build itemTemlate ${source.value}");
        return ListTile(
          title: Text(source.text!),
          trailing: Checkbox(
            value: source.check,
            onChanged: (v) { onSelect(); },
          ),
        );
      },
    );
  }
}
