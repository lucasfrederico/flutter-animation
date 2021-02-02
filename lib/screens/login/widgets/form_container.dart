import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/login/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            InputField(
              hint: 'Usuário',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: 'Senha',
              obscure: true,
              icon: Icons.lock_outline,
            )
          ],
        ),
      ),
    );
  }
}
