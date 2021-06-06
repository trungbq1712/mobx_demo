

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/select_item.dart';

class SelectComponent extends StatelessWidget {

  final ObservableList<SelectItem> itemSource;

  SelectComponent(this.itemSource, {
    this.placeholder, 
    this.defaultItem,
    this.onItemSelected, 
    Key? key 
  }) : super(key: key);

  Function(SelectItem)? onItemSelected;
  String? placeholder;
  SelectItem? defaultItem;
  SelectItem? _selectedItem;

  @override
  Widget build(BuildContext context) {
    print("Build outside SelectComponent");
    return Observer(
      builder: (BuildContext context) {  
        print("Build inside SelectComponent");
      return Container(
        width: 200,
        height: 35,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          border: Border.all(color: Colors.grey)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<SelectItem>(
            hint: placeholder != null ?  Text("${placeholder!}",) : null,
            icon: null,
            isExpanded: true,
            isDense: true,
            value: _setValue(),
            onChanged: (item) {
              itemSource.forEach((element) { element.unSelect();});
              item!.select();
              _selectedItem = item;
              onItemSelected!(item);
            },
            items: itemSource.map((e) {
              return new DropdownMenuItem(
                value: e,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("${e.text}",),
                    Visibility(
                      visible: _selectedItem == e,
                      child: Icon(Icons.check,
                      ),
                    )
                  ],
                ),
              );
            }).toList()
          ),
        )
      );}
    );
  }

  _setValue() {
    if (itemSource.any((element) => element.isSelected)) {
      return itemSource.singleWhere((element) => element.isSelected);
    }
    else if (defaultItem != null ) {
      return defaultItem;
    }
  }
}