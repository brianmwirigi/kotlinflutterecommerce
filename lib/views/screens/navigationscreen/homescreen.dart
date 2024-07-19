import 'package:flutter/material.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/widgets/headerwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(),
        ],
      ),
    ));
  }
}
