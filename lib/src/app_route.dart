import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_learn/src/pages/another.dart';
import 'package:flutter_bloc_learn/src/pages/home_page.dart';

class AppRoute {
  static const home = 'home';
  static const another = 'another';
  final _route = <String, WidgetBuilder>{
    home: (context) => const MyHomePage(title: "HomePage"),
    another: (context) => const AnotherPage(title: "Another")
  };
  get getAll => _route;
}