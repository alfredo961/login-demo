import 'package:flutter/material.dart';
import 'package:project_base/view/widgets_globales/boton.dart';

class MyAppState extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> with TickerProviderStateMixin {
  late  TabController _controller;
  final List<Tab> topTabs = <Tab>[
     Tab(text: 'Profile'),
     Tab(text: 'Match'),
     Tab(text: 'Chat'),
  ];

  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.yellow,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: Text(
              'LOGO',
              style: TextStyle(
                  color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        bottom: TabBar(
          controller: _controller,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: [
            ProfileView(),
            MatchView(),
            ChatView(),
          ]),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NombreUsuario(),
          Text('Pagina 1'),
          BotonRedondeado(
            buttonText: "Ver foto",
            onPressed: (){
              print("mi primer pantalla");
            },
          ),
        ],
      ),
    );
  }
}

class NombreUsuario extends StatelessWidget {
  const NombreUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Bienvenido, Usuario!!',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ));
  }
}




class MatchView extends StatelessWidget {
  const MatchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('Pagina 2')
      ),

    );
  }
}
class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            children: [
              NombreUsuario(),
              Text('Pagina 3'),
              BotonRedondeado(
                buttonText: "Enviar",
                onPressed: (){
                  print("Enviar");
                },
              ),
              BotonRedondeado(
                buttonText: "Adjuntar",
                onPressed: (){
                  print("Adjunto archivo");
                },
              ),
            ],
          )
      ),
    );
  }
}


class InputsPersonalizados extends StatelessWidget {
  const InputsPersonalizados(
      {super.key, this.labelText, this.keyboardType, this.obscureText});

  final String? labelText;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText!),
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      obscureText: obscureText ?? false,
    );
  }
}


