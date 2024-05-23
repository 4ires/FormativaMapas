import 'package:flutter/material.dart';
import 'Mapa1.dart';
import 'Mapa2.dart';
import 'Mapa3.dart';

//nomeando a classe.
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _HomePageState();
}

//criando a página e a nomeando.
class _HomePageState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPAS"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //inserindo o icon.
            const Icon(

              Icons.map_outlined,
              size: 140.0,
              color: Colors.deepPurple,
            ),

            // colocando e alinhando o texto na página.
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  // inserindo as rotas e nomeando os botões que navegarão para as páginas.
                  ElevatedButton(
                      child: const Text("Brazil"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mapa1()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Italy"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mapa2()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("England"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mapa3()),
                        );
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}