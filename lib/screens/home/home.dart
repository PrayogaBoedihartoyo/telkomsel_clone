import 'package:flutter/material.dart';
import 'package:telkomsel_clone/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page', style: mediumText15),
      ),
    );
  }
}
