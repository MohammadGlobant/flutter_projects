import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/new_style/NewStyle.dart';

void main(){runApp(const MyApp());}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
        home: NewStyle(),
    );
  }
}