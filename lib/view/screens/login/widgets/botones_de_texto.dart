import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Registrarse extends StatelessWidget {
  const Registrarse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            text: '¿No tienes una cuenta?',
            style: const TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: ' Registrate',
                  style: const TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // navigate to desired screen
                    })
            ]),
      ),
    );
  }
}

class OlvidoContrasena extends StatelessWidget {
  const OlvidoContrasena({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            text: '¿Olvidaste tu contraseña?',
            style: const TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: 'Presione aquí',
                  style: const TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // navigate to desired screen
                    })
            ]),
      ),
    );
  }
}
