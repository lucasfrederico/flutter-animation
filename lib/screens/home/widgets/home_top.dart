import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrowAnimation;

  HomeTop({@required this.containerGrowAnimation});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4, // ocupando 30% da tela
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Bem-vindo, Daniel!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrowAnimation.value * 120,
              height: containerGrowAnimation.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/perfil.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: containerGrowAnimation.value * 35,
                height: containerGrowAnimation.value * 35,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: containerGrowAnimation.value * 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
