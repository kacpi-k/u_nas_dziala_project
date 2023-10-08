import 'package:flutter/material.dart';

class DowodDownload extends StatefulWidget {
  const DowodDownload({super.key});

  @override
  State<DowodDownload> createState() => _DowodDownload();
}

class _DowodDownload extends State<DowodDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Dokumenty do pobrania',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            style: TextStyle(fontSize: 24),
            'Dowód osobisty',
          ),
          const SizedBox(
            height: 50,
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
              'Wniosek o wydanie dowodu osobistego',
              textAlign: TextAlign.center,
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
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
