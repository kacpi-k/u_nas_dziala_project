import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/wyrobienie_dowodu.dart';

class DowodZguba extends StatefulWidget {
  const DowodZguba({super.key});

  @override
  State<DowodZguba> createState() => _HomePageState();
}

class _HomePageState extends State<DowodZguba> {
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
              'Zgubienie dowodu osobistego',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                '1.Przejdź na stronę EPUAP\n2. Wybierz, co chcesz zgłosić – utratę albo uszkodzenie dowodu.\n3. Wybierz urząd, który wydał dowód. Jeśli zgłaszasz uszkodzenie, a urząd nie otrzymał jeszcze dowodu – dostarcz go do tego urzędu.\n4. Kliknij przycisk Unieważnij dowód.\n5. System przekieruje cię do usługi e-podpis na stronie pz.gov.pl.\n6. Wykorzystaj profil zaufany i potwierdź unieważnienie kodem SMS, który dostaniesz na numer telefonu przypisany do twojego profilu zaufanego.\n7. Status twojego dowodu od razu się zmieni w Rejestrze Dowodów Osobistych.\n8. Na swoją skrzynkę ePUAP dostaniesz zaświadczenie o zgłoszeniu utraty lub uszkodzenia dowodu osobistego.\n9. Jeśli zgłaszasz uszkodzenie dowodu – zanieś dowód do urzędu albo wyślij pocztą.',
                textAlign: TextAlign.justify,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WyrobienieDowodu()));
                    // Tutaj możesz dodać akcję, która ma być wykonywana po naciśnięciu przycisku.
                    // Na przykład można dodać nawigację do innej strony.
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
                    'Wyrobienie dowodu tozsamości ',
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
