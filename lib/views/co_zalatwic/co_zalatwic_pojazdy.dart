import 'package:flutter/material.dart';

class Pojazdy extends StatefulWidget {
  const Pojazdy({super.key});

  @override
  State<Pojazdy> createState() => _HomePageState();
}

class _HomePageState extends State<Pojazdy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text('Mobilny Informator'),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('icons/herb_icon.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            style: TextStyle(fontSize: 24),
            'Co potrzebujesz załatwić?',
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
              minimumSize: Size(350, 50),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Sprzedałem pojazd',
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
              minimumSize: Size(350, 50),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Oddałem pojazd do kasacji',
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
              minimumSize: Size(350, 50),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Kupiłem pojazd',
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
              minimumSize: Size(350, 50),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                side: const BorderSide(
                    color: Color.fromARGB(
                        255, 193, 193, 193)), // Dostosuj kolor obramowania
              ),
            ),
            child: const Text(
              'Odziedziczyłem pojazd',
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
