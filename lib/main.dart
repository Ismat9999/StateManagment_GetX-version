import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smgetxversion/core/configs/root_binding.dart';
import 'package:smgetxversion/presantion/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomePage(),
      initialBinding: RootBinding(),
    );
  }
}

