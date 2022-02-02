import 'package:flutter/material.dart';
import 'todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC1007E),
          secondary: const Color(0xFF9e9e9e),
        ),
        toggleableActiveColor: const Color(0xFFC1007E),
        iconTheme: const IconThemeData(
          color: Color(0xFFC1007E),
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Color(0xFFC1007E),
        ),
      ),
      home: const TodoPage(),
    );
  }
}
