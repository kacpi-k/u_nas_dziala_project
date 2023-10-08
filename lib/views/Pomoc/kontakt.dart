import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';

class Kontakt extends StatefulWidget {
  const Kontakt({super.key});

  @override
  State<Kontakt> createState() => _Kontakt();
}

class _Kontakt extends State<Kontakt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Kontakt',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Urząd miasta Płocka\nKrystyna Balcerzak\nNr telefonu: +48 890 666 712\nE-mail: kbalcerzak79@plock.pl',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: const Text(
                'Biuro interwencji i informowania mieszkańców\nKrystyna Balcerzak\nNr telefonu: 24 364 55 55\nE-mail: info@plock.pl',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                    // Na przykład można dodać nawigację do innej strony.
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil(homePage, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(173, 244, 18, 18),
                    padding: const EdgeInsets.all(
                        16.0), // Dostosuj wcięcie przycisku
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
