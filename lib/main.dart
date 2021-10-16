import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymart/bindings/items_bindings.dart';

import 'views/items_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemsScreen(),
    );
  }
}

