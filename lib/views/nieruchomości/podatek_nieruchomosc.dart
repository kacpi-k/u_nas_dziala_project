import 'package:flutter/material.dart';

class PodatekNieruchomosc extends StatefulWidget {
  const PodatekNieruchomosc({super.key});

  @override
  State<PodatekNieruchomosc> createState() => _HomePageState();
}

class _HomePageState extends State<PodatekNieruchomosc> {
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
              ),
              'Podatek od nieruchomości IN-1',
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: const Text(
                'Aby zapłacić podatek od nieruchomości należy:\n1.Wypełnić druk IN-1 Informacja o nieruchomościach i obiektach budowlanych wraz z odpowiednim załącznikiem.\n2.Złóżyć druk IN-1 w Urzędzie Miasta.\n3.Czekać na decyzję o wysokości podatku.\n4.Zapłacić podatek',
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
                const SizedBox(
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
      ),
    );
  }
}
