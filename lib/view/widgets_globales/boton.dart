import 'package:flutter/material.dart';

class BotonRedondeado extends StatelessWidget {
  const BotonRedondeado({Key? key, required this.buttonText, this.onPressed}) : super(key: key);

  final String? buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all<Color>(Colors.yellow),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child:  Text(buttonText!,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold)),
    );
  }
}
