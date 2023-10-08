import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/services/tickets/ticket_service.dart';
import 'package:u_nas_dziala_project/views/bilet/bilet_przed.dart';

class BiletPrzed extends StatefulWidget {
  const BiletPrzed({super.key});

  @override
  State<BiletPrzed> createState() => _BiletPrzed();
}

class _BiletPrzed extends State<BiletPrzed> {
  int queueNumber = TicketService.getQueueElementsCounter();
  //String dynamicText = 'Liczba osób w kolejce: $queueNumber';

  /*void changeText() {
    setState(() {
      dynamicText = ''
    });
  }*/

  @override
  Widget build(BuildContext context) {
    TicketService.queueSimulator();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Pobierz Bilet',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                // Obsługa kliknięcia przycisku
                //Navigator.of(context).pushNamed(zalatwicSpraweRoute);
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(biletAktywny, (route) => false);
              },
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(192, 43, 206, 46),
                  borderRadius: BorderRadius.circular(120.0),
                ),
                child: Center(
                  child: Image.asset('icons/click_icon.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
                'Liczba osób w kolejce: 10',
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  'O co chodzi?'),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  'Klikając w zielony przycisk nasz zintegrowany system przydzieli Ci numer, który będzie odzwierciedlał Twoje miejsce w kolejce. Aplikacja wyświetli również liczbę osób, które są przed Tobą w kolejce. Przed rozpoczęciem wizyty należy pokazać urzędnikowi numer swojego biletu.'),
            ),
          )
        ],
      ),
    );
  }
}
