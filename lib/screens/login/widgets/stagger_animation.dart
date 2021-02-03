import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> buttonSqueenAnimation;

  StaggerAnimation({this.controller})
      : buttonSqueenAnimation = Tween(
          begin: 320.0,
          end: 60.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.150), // equivale a 15% da animação completa
          ),
        );

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Container(
            width: buttonSqueenAnimation.value,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(247, 64, 105, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: _buildInside(context)),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueenAnimation.value > 75) {
      return Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    }
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      strokeWidth: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
