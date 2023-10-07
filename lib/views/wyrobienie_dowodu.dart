import 'package:flutter/material.dart';

class WyrobienieDowodu extends StatefulWidget {
  const WyrobienieDowodu({super.key});

  @override
  State<WyrobienieDowodu> createState() => _HomePageState();
}

class _HomePageState extends State<WyrobienieDowodu> {
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
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
            ),
            'Wyrobienie dowodu osobistego',
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Tekst, który może być bardzo długi i sam się będzie zawijać na kolejne linie w miarę potrzeb. Możesz dodać tutaj dowolną ilość tekstu.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                  // Na przykład można dodać nawigację do innej strony.
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: Color.fromARGB(192, 43, 206, 46),
                  padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Dostosuj zaokrąglenie rogów
                    side: const BorderSide(
                        color: Color.fromARGB(
                            192, 43, 193, 193)), // Dostosuj kolor obramowania
                  ),
                ),
                child: const Text(
                  'Zajmij miejsce w kolejce',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0, // Dostosuj rozmiar tekstu
                    fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                  // Na przykład można dodać nawigację do innej strony.
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: Color.fromARGB(173, 244, 18, 18),
                  padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Dostosuj zaokrąglenie rogów
                    side: const BorderSide(
                        color: Color.fromARGB(
                            192, 255, 0, 0)), // Dostosuj kolor obramowania
                  ),
                ),
                child: const Text(
                  'Powrót do ekranu głównego',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0, // Dostosuj rozmiar tekstu
                    fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                  // Na przykład można dodać nawigację do innej strony.
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: Color.fromARGB(204, 50, 64, 255),
                  padding: EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Dostosuj zaokrąglenie rogów
                    side: const BorderSide(
                        color: Color.fromARGB(
                            192, 3, 100, 100)), // Dostosuj kolor obramowania
                  ),
                ),
                child: const Text(
                  'Dokumenty do pobrania',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0, // Dostosuj rozmiar tekstu
                    fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
