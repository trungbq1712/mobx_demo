// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Item on ItemBase, Store {
  final _$checkAtom = Atom(name: 'ItemBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$ItemBaseActionController = ActionController(name: 'ItemBase');

  @override
  void tick() {
    final _$actionInfo =
        _$ItemBaseActionController.startAction(name: 'ItemBase.tick');
    try {
      return super.tick();
    } finally {
      _$ItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
check: ${check}
    ''';
  }
}
