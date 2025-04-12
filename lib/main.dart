import 'package:favourite_flutter/Autocomplete%20TextField%20/autoCompleteTextField.dart';
import 'package:favourite_flutter/Flutter%20Neumorphism%20Button/FlutterNeumorphismButton.dart';
import 'package:favourite_flutter/Nested%20ListView%20and%20Column/nestedListViewAndColumn.dart';
import 'package:flutter/material.dart';

import 'ClipPath/clipPathWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Favorite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AutoCompleteTextField()
    );
  }
}
