import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/home/widgets/home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrowAnimation;

  StaggerAnimation({@required this.controller})
      : containerGrowAnimation = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        );

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerGrowAnimation: containerGrowAnimation,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          builder: _buildAnimation,
          animation: controller,
        ),
      ),
    );
  }
}
