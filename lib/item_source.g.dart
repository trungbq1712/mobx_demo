// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_source.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemSource on ItemSourceBase, Store {
  Computed<int>? _$totalItemsComputed;

  @override
  int get totalItems =>
      (_$totalItemsComputed ??= Computed<int>(() => super.totalItems,
              name: 'ItemSourceBase.totalItems'))
          .value;

  final _$isBusyAtom = Atom(name: 'ItemSourceBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  final _$itemsAtom = Atom(name: 'ItemSourceBase.items');

  @override
  ObservableList<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$ItemSourceBaseActionController =
      ActionController(name: 'ItemSourceBase');

  @override
  void setBusy(bool value) {
    final _$actionInfo = _$ItemSourceBaseActionController.startAction(
        name: 'ItemSourceBase.setBusy');
    try {
      return super.setBusy(value);
    } finally {
      _$ItemSourceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(Item item) {
    final _$actionInfo = _$ItemSourceBaseActionController.startAction(
        name: 'ItemSourceBase.add');
    try {
      return super.add(item);
    } finally {
      _$ItemSourceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int idx) {
    final _$actionInfo = _$ItemSourceBaseActionController.startAction(
        name: 'ItemSourceBase.remove');
    try {
      return super.remove(idx);
    } finally {
      _$ItemSourceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isBusy: ${isBusy},
items: ${items},
totalItems: ${totalItems}
    ''';
  }
}
