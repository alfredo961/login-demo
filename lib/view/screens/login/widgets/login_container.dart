import 'package:flutter/material.dart';
import 'package:project_base/view/widgets_globales/inputs.dart';
import 'package:toast/toast.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController carnet = TextEditingController();
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          //tarjeta-contenedor
          Card(
            elevation: 3,
            child: Container(
              height: 250,
              width: 300,
              margin: const EdgeInsets.symmetric(
                horizontal: 14.0,
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 90,
                  ),
                  InputWidget(
                    controller: email,
                    labelText: 'Correo electrónico',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputWidget(
                    controller: password,
                    labelText: 'Contraseña',
                    obscureText: true,
                  ),

                  // !(isClientPressed)
                  //     ? InputWidget(
                  //   controller: carnet,
                  //   labelText: 'Carnet',
                  //   obscureText: true,
                  // ) : SizedBox(),
                ],
              ),
            ),
          ),

          //Logo
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child:  CircleAvatar(
              radius: 60,
              backgroundColor: Colors.yellow,
              child: CircleAvatar(
                radius: 57,
                backgroundColor: Colors.black,
                child: Text(
                  'LOGO',
                  style: TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          //boton Inicio de sesion
          Positioned(
            right: 0,
            left: 0,
            bottom: -23,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                onPressed: () {

                  bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email.text);
                  print('Tapp!!');
                  if(email.text.isEmpty){
                    Toast.show("El campo correo, esta vacio", duration: Toast.lengthLong, gravity:  Toast.bottom);
                  }else if(!emailValid){
                    Toast.show("El correo que ingresó es incorrecto.", duration: Toast.lengthLong, gravity:  Toast.bottom);

                  }else if(password.text.isEmpty){
                    print("El campo contraseña, esta vacio");
                  }else{
                    Navigator.pushNamed(context, "/home");
                  }

                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: const Text('Iniciar sesión',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
