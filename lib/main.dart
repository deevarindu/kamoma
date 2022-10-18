import 'package:flutter/material.dart';
import 'package:kamoma_mobile/app.dart';

void main() {
  runApp(const App());

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
