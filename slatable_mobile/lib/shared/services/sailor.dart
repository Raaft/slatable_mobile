import 'package:flutter/material.dart';

// global variable to access sailor which is a navigation service
// that controls routes easily and without the need of passing contexts.
// ignore: non_constant_identifier_names
final Sailor = _SailorImpl();

// prevents sailor implementation to be accessed from outside this file.
class _SailorImpl {
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  // global key which controls navigation state
  final _navigatorKey = GlobalKey<NavigatorState>();
}

extension navigationMethods on _SailorImpl {
  // use "toNamed" instead of Navigator.pushNamed
  Future<dynamic> toNamed(String routeName, {Object? args}) {
    return _navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  Future<dynamic> replaceWith(String routeName, {Object? args}) {
    return _navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: args);
  }

  Future<dynamic> toNamedAndMakeFirst(String routeName, {Object? args}) {
    return _navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => route.isFirst, arguments: args);
  }

  Future<dynamic> toNamedAsFirst(String routeName, {Object? args}) {
    return _navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false, arguments: args);
  }

  // use "back" instead of Navigator.pop
  void back<T extends Object?>([T? result]) {
    return _navigatorKey.currentState!.pop(result);
  }
}
