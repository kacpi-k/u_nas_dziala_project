import 'package:flutter/material.dart';

class BrakKartyPojazd extends StatefulWidget {
  const BrakKartyPojazd({super.key});

  @override
  State<BrakKartyPojazd> createState() => _HomePageState();
}

class _HomePageState extends State<BrakKartyPojazd> {
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
                fontSize: 16,
              ),
              'Jeżeli nie jesteś w posiadaniu dowodu rejestracyjnego lub karty pojazdy dla pojazdu, który zakupiłeś, musisz skontaktować się z osobą, od której zakupiłeś pojazd. Sprzedający jest zobowiązany przekazać ci powyższe dokumenty podczas sprzedaży pojazdu.',
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Jeżeli nie jesteś w posiadaniu umowy sprzedaży pojazdu, bezzwłocznie skontatkuj się z osobą sprzedająca pojazd, gdyż nieposiadając dokumentu potwierdzającego zakup pojazdu, nie możesz stać się jego właścicielem!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Formularz rejestracji pojazdu możesz pobrać w zakładce “Rejestracja pojazdu” pod przyciskiem “Dokumenty do pobrania”.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(192, 43, 206, 46),
                    padding: const EdgeInsets.all(
                        16.0), // Dostosuj wcięcie przycisku
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Dostosuj zaokrąglenie rogów
                      side: const BorderSide(
                          color: Color.fromARGB(
                              192, 43, 193, 193)), // Dostosuj kolor obramowania
                    ),
                  ),
                  child: const Text(
                    'Nabycie i rejestracja pojazdu',
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
                    minimumSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(204, 50, 64, 255),
                    padding: const EdgeInsets.all(
                        16.0), // Dostosuj wcięcie przycisku
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Dostosuj zaokrąglenie rogów
                      side: const BorderSide(
                          color: Color.fromARGB(
                              192, 3, 100, 100)), // Dostosuj kolor obramowania
                    ),
                  ),
                  child: const Text(
                    'Pomoc',
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
