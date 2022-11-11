import 'dart:async';

import 'package:auth_app/main.dart';
import 'package:auth_app/services/constant/path_svg.dart';
import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        (() => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const MyHomePage())))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PathSvg.logo,
      ),
    );
  }
}
