import 'package:flutter/material.dart';

class OpcionesPage extends StatelessWidget {
  const OpcionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Seleccione el perfil de usuario"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Flexible(
                  child: Tarjeta(
                    icono: Icons.abc,
                    texto: "Cliente",
                    onTap: (){
                      Navigator.pushNamed(context, "/login");

                    },
                  ),
                ),
                Flexible(
                  child: Tarjeta(
                    icono: Icons.accessibility_new,
                    texto: "Técnico",
                    onTap: (){
                      print("Pantalla de tecnico");
                      //isTecnicoPressed = true;
                    },
                  ),
                ),
              ],
            ),
            Text("Nota: Este perfil solo se seleccionara la primera vez que inicie la aplicacion, seleccione la opcion correcta"),
          ],
        ),
      ),
    );
  }
}

class Tarjeta extends StatelessWidget {
  const Tarjeta({Key? key, this.icono, this.texto, this.onTap}) : super(key: key);

  final IconData? icono;
  final String? texto;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 250,
        margin: EdgeInsets.all(10),
        color: Colors.yellow,
        child: Column(
          children: [
            Icon(icono),
            Text(texto!)
          ],
        ),
      ),
    );
  }
}

