import 'package:flutter/material.dart';
import 'package:toku/screens/homepage.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
    builder: (context) => const korean_talk_app(), // Wrap your app
  ),);
}

// ignore: camel_case_types
class korean_talk_app extends StatelessWidget {
  const korean_talk_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
