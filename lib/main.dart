// ignore_for_file: camel_case_types

import 'package:basketball_counter_app/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const coinsApp());
}

class coinsApp extends StatelessWidget {
  const coinsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
