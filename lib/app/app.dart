import 'package:flutter/material.dart';

import '../utils/theme.dart';
import '../views/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parallax Scroll',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
