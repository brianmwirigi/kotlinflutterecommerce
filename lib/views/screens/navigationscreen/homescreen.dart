import 'package:flutter/material.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/widgets/bannerwidget.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/widgets/headerwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(),
          BannerWidget(),
        ],
      ),
    ));
  }
}
