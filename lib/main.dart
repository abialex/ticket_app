import 'package:flutter/material.dart';
import 'package:ticket_app/bootstrap.dart';
import 'package:ticket_app/ui/modules/app.dart';

void main() {
  bootstrap(() => const MyApp());
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
