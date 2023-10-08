import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/dowod_zguba.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/wyrobienie_dowodu.dart';

class Dokumenty extends StatefulWidget {
  const Dokumenty({super.key});

  @override
  State<Dokumenty> createState() => _Dokumenty();
}

class _Dokumenty extends State<Dokumenty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text('Mobilny Informator'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DowodZguba()));
                // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                // Na przykład można dodać nawigację do innej strony.
                Navigator.of(context).pushNamed(dowodZguba);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Zgubiłem dowód osobisty',
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
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Zgubiłem prawo jazdy',
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
                Navigator.of(context).pushNamed(dowodWaznosc);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Mój dowód osobisty stracił wazność',
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
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Mój paszport stracił waznosc',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WyrobienieDowodu()));
                // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                // Na przykład można dodać nawigację do innej strony.
                Navigator.of(context).pushNamed(dowodWyrob);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Chcę wyrobić dowód osobisty',
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
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Moje wyrobić paszport',
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
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 193, 193, 193)), // Dostosuj kolor obramowania
                ),
              ),
              child: const Text(
                'Chce otrzymać prawo jazdy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0, // Dostosuj rozmiar tekstu
                  fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
