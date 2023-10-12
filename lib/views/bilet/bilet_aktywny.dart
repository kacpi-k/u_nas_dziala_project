import 'package:flutter/material.dart';
import 'dart:async';

import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/services/notification_service.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

//test

// ignore: use_key_in_widget_constructors
class QueuePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _QueuePageState createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  int currentQueuePosition = 10; // Początkowa pozycja w kolejce
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer(); // Rozpocznij odliczanie co 20 sekund
  }

  void startTimer() {
    configureLocalNotifications();
    timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        if (currentQueuePosition > 0) {
          setState(
            () {
              currentQueuePosition--; // Dekrementuj pozycję w kolejce co 20 sekund
            },
          );
          if (currentQueuePosition == 3) {
// Wyświetl popup po osiągnięciu pozycji 3 w kolejce
            NotificationServices.showLocalNotification();
          }
        }
      },
    );
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void configureLocalNotifications() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showLocalNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      importance: Importance.max,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      'Urząd Miasta Płock',
      'Przygotuj się! Przed Tobą zostały już tylko 3 osoby!',
      platformChannelSpecifics,
      payload: 'custom_notification',
    );
  }

  @override
  void dispose() {
    timer.cancel(); // Zatrzymaj timer, gdy widget zostanie usunięty
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Twój bilet'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  width: 125.0,
                  height: 125.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(192, 43, 206, 46),
                    borderRadius: BorderRadius.circular(120.0),
                  ),
                  child: const Center(
                    child: Text(
                      '46',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 24, left: 50),
                  child: const Text(
                    'Twój numer\nbiletu',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  width: 125.0,
                  height: 125.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(192, 255, 0, 0),
                    borderRadius: BorderRadius.circular(120.0),
                  ),
                  child: Center(
                    child: Text(
                      '$currentQueuePosition',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 24, left: 40),
                  child: const Text(
                    'Twoja obecna\npozycja w kolejce',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Powiadomimy Cię, gdy liczba osób\nprzed tobą zmniejszy się do 3.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Udaj się do:\nUrząd Miasta Płocka- Oddział Komunikacji\nAleja marszałka Józefa Piłsudzkiego 6\ntel. 24 364 55 55',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              'Twoją sprawą zajmię się:\nJolanta Krysiak Pokój\nnr. 26 (wejście od parkingu)\ntel. +48 909 789 675\nE-mail: jkrysiak87@plock.eu',
              textAlign: TextAlign.center,
            )),
            const SizedBox(
              height: 20,
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
                padding:
                    const EdgeInsets.all(16.0), // Dostosuj wcięcie przycisku
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Dostosuj zaokrąglenie rogów
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
          ]),
        ));
  }
}
