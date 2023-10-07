import 'package:flutter/material.dart';

class CzyPosiadaszDokPojazd extends StatefulWidget {
  const CzyPosiadaszDokPojazd({super.key});

  @override
  State<CzyPosiadaszDokPojazd> createState() => _HomePageState();
}

class _HomePageState extends State<CzyPosiadaszDokPojazd> {
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
                fontSize: 25,
              ),
              'Czy posiadasz kompletną dokumentację, niezbędną do załatwienia sprawy?',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: const Text(
                '1. Dowód własności pojazdu\n2. Dowód tosamości\n3. Karta pojazdu\n4. Dowód badania technicznego\n5. Polisa OC\n6. Formularz rejestracji',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: const Text(
                'Jezeli twoja dokumentacja jest kompletna naciśnij przycisk POTWIERDZAM. Jeśli jednak nie posiadasz wszystkich wymaganych dokumentów naciśnij przycisk UZUPEŁNIJ DOKUMENTACJĘ, aby uzyskać informacje, które pomogą ci w skompletowaniu brakujących dokumentów',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
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
                    'Potwierdzam',
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
                    'Uzupełnij dokumentację',
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
