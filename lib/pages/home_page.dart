import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(child: Text("List e Scroll Flutter 3")),
      ),
      body: body(),
    );
  }
}

// Utilizzo di SafeArea() per evitare sovrapposizioni
// con le aree critiche del dispositivo (come la notch o i comandi).
Widget body() => SafeArea(
      // SingleChildScrollView() rende il contenuto scorrevole
      // utile per liste lunghe.
      child: SingleChildScrollView(
        // Column organizza i widget in verticale.
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Allinea i widget a sinistra.
          // List.generate crea una lista di widget dinamicamente.
          children: List.generate(
            100, // Genera 100 widget Text.
            // Posso usare GestureDetector al posto di InkWell per non avere lo splash grafico.
            (index) => InkWell(
              onTap: () {
                print(
                    "Clicked: ${index + 1} Pokémon"); // Stampa il Pokémon cliccato.
              },
              child: Padding(
                // Padding a sinistra per ogni elemento:
                // padding: EdgeInsets.only(top: 10, left: 10),
                // Padding applicato sia verticalmente che orizzontalmente:
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  '#${index + 1} Pokémon', // Mostra il numero del Pokémon.
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
