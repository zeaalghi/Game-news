import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Starting.png'), fit: BoxFit.cover)),
      );
    
  }
}
