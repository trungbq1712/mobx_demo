// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectItem on SelectItemBase, Store {
  final _$isSelectedAtom = Atom(name: 'SelectItemBase.isSelected');

  @override
  bool get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  final _$SelectItemBaseActionController =
      ActionController(name: 'SelectItemBase');

  @override
  void select() {
    final _$actionInfo = _$SelectItemBaseActionController.startAction(
        name: 'SelectItemBase.select');
    try {
      return super.select();
    } finally {
      _$SelectItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unSelect() {
    final _$actionInfo = _$SelectItemBaseActionController.startAction(
        name: 'SelectItemBase.unSelect');
    try {
      return super.unSelect();
    } finally {
      _$SelectItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelected: ${isSelected}
    ''';
  }
}
