import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';

class NabyciePojazduDownload extends StatefulWidget {
  const NabyciePojazduDownload({super.key});

  @override
  State<NabyciePojazduDownload> createState() => _NabyciePojazduDownload();
}

class _NabyciePojazduDownload extends State<NabyciePojazduDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Center(
          child: Text(
            'Dokumenty do pobrania',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            style: TextStyle(fontSize: 24),
            'Nabycie/Rejestracja\npojazdu',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(brakKartyPojazdu);
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
              'Formularz rejestracji pojazdu',
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
              Navigator.of(context).pushNamed(brakKartyPojazdu);
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
              'Zgłoszenie nabycia pojazdu',
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
        ],
      ),
    );
  }
}
