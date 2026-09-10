import 'package:flutter/material.dart';
import 'package:new_belinda/page/appbar.dart';
import 'package:new_belinda/page/drawer.dart';
import 'package:new_belinda/page/bottomsheet.dart';
void main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheetPage(),
    );
  }
}