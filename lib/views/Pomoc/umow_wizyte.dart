import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/views/Pomoc/kontakt.dart';
import 'package:u_nas_dziala_project/views/home_page.dart';

class UmowWizyte extends StatefulWidget {
  const UmowWizyte({super.key});

  @override
  State<UmowWizyte> createState() => _HomePageState();
}

class _HomePageState extends State<UmowWizyte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text('Umow wizyte'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
              'Jezeli sprawa, ktora musisz zalatwic nie jest typowa lub nie mozesz znalezc jej w naszej aplikacji, skontaktuj sie z nami w celu umowienia sie na wizyte w urzedzie',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Co musisz zrobic?',
              style: TextStyle(fontSize: 36.0),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                '1. Wyslij email na adres urzadmiasta@plock.eu\n 2. W wiadomosci dokladnie opisz problem ktory cie dotyczy oraz jakiego rozwiazania oczekujesz\n3. Oczekuj na wiadomosc zwrotna\n4. W przypadku jakichkolwiek watpliwosci mozesz skontaktowac sie z naszym biurem obslugi klienta. Numery telefonow znajdziesz w zakladce Kontakt',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            ),
            Column(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Kontakt()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  backgroundColor: const Color.fromARGB(192, 43, 206, 46),
                  padding:
                      const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Dostosuj zaokrąglenie rogów
                    side: const BorderSide(
                        color: Color.fromARGB(
                            192, 43, 206, 46)), // Dostosuj kolor obramowania
                  ),
                ),
                child: const Text(
                  'Kontakt',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0, // Dostosuj rozmiar tekstu
                    fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                  ),
                ),
              )
            ]),
            const SizedBox(height: 20),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                    // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                    // Na przykład można dodać nawigację do innej strony.
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
