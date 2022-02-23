import 'package:flutter/material.dart';

class ColorManager extends InheritedWidget {
  final Color primaryColor = Colors.green;
  const ColorManager({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  // Static Method. (Calling without objects).
  static ColorManager of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ColorManager>()!;
  }
}