// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';

class PomocGlowna extends StatefulWidget {
  const PomocGlowna({super.key});

  @override
  State<PomocGlowna> createState() => _PomocGlowna();
}

class _PomocGlowna extends State<PomocGlowna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Pomoc',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            style: TextStyle(fontSize: 24),
            'Wybierz brakujący dokument',
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
              // Na przykład można dodać nawigację do innej strony.
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Aplikacja nie działa prawidłowo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0, // Dostosuj rozmiar tekstu
                fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
              // Na przykład można dodać nawigację do innej strony.
              Navigator.of(context).pushNamed(nieMogeZnalezcSprawy);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Nie mogę znaleźć sprawy, którą \nchcę załatwić',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0, // Dostosuj rozmiar tekstu
                fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
              // Na przykład można dodać nawigację do innej strony.
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'FAQ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0, // Dostosuj rozmiar tekstu
                fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
              // Na przykład można dodać nawigację do innej strony.
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Instrukcje uzytkownika',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0, // Dostosuj rozmiar tekstu
                fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
              ),
            ),
          ),
        ],
      ),
    );
  }
}
