import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Leilao63Loader extends StatelessWidget {
  const Leilao63Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          LoadingAnimationWidget.discreteCircle(color: Colors.white, size: 60),
    );
  }
}
