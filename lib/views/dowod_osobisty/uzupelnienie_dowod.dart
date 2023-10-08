import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';

class UzupelnienieDowod extends StatefulWidget {
  const UzupelnienieDowod({super.key});

  @override
  State<UzupelnienieDowod> createState() => _UzupelnienieDowod();
}

class _UzupelnienieDowod extends State<UzupelnienieDowod> {
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
              'Jeżeli nie jesteś w posiadaniu odpowiedniej fotografii, udaj się do zakładu fotograficznego w celu wyrobienia odpowiedniego zdjęcia. Pamiętaj że fotografia powinna mieć wymiary 35 mm x 45 mm!',
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Wniosek o wydanie dowodu tożsamości możesz pobrać w zakładce “Wyrobienie dowodu tożsamości” pod przyciskiem “Dokumenty do pobrania”. ',
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
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Jeśli ubiegasz sie o wydanie dowodu osobistego z powodu nieuprawnionego wykorzystania twoich danych osobowych (kradzież tożsamości) – uprawdopodobnij, że takie zdarzenie miało miejsce. Możesz np. dołączyć pismo lub e-mail z firmy, z którą masz podpisaną umowę, informujące cię o wycieku danych osobowych albo wydruk zamieszczonego na stronie internetowej oświadczenia informującego o wycieku danych wraz z dokumentem potwierdzającym, że firma gromadziła twoje dane osobowe.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
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
                    Navigator.of(context).pushNamed(biletPrzed);
                  },
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
                    'Wyrobienie dowodu osobistego',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18.0, // Dostosuj rozmiar tekstu
                      fontWeight: FontWeight.bold, // Dostosuj wagę tekstu
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                    // Na przykład można dodać nawigację do innej strony.
                    Navigator.of(context).pushNamed(pomoc);
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
