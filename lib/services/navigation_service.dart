import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    final navigator = navigatorKey.currentState;
    if (navigator != null) {
      return navigator.pushNamed(routeName);
    } else {
      throw Exception("Navigator state is null");
    }
  }

  bool goBack() {
    final navigator = navigatorKey.currentState;
    if (navigator != null) {
      navigator.pop();
      return true;
    } else {
      return false;
    }
  }
}
