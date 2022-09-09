import 'package:flutter/material.dart';

class RecordarUsuario extends StatefulWidget {
  const RecordarUsuario({Key? key}) : super(key: key);

  @override
  State<RecordarUsuario> createState() => _RecordarUsuarioState();
}

class _RecordarUsuarioState extends State<RecordarUsuario> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text('Recordarme'),
      autofocus: false,
      activeColor: Colors.black,
      checkColor: Colors.yellow,
      selected: _value,
      value: _value,
      onChanged: (bool? value) {
        setState(() {
          _value = value!;
        });
      },
    );
  }
}
