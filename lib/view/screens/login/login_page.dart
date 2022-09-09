import 'package:flutter/material.dart';
import 'package:project_base/view/screens/login/widgets/botones_de_texto.dart';
import 'package:project_base/view/screens/login/widgets/login_container.dart';
import 'package:project_base/view/screens/login/widgets/recordar_usuario.dart';
import 'package:project_base/view/screens/login/widgets/redes_sociales.dart';
import 'package:project_base/view/utils/disable_keyboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => disableKeyboard(context),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 75), //Mediaquery
                  LoginContainer(),
                  SizedBox(height: 25),
                  RecordarUsuario(),
                  SizedBox(height: 25),
                  RedesSociales(),
                  SizedBox(height: 50),
                  Registrarse(),
                  SizedBox(height: 15),
                  OlvidoContrasena()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
