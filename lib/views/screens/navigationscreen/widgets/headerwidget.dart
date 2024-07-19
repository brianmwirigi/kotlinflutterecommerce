import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //code to make the header responsive using media query
      width: MediaQuery.of(context).size.width,
      height:
          MediaQuery.of(context).size.height * 0.2, //20% of the screen height

      child: Stack(
        children: [
          Icon(
            Icons.search,
            weight: MediaQuery.of(context).size.width,
            //  fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
