import 'package:flutter/material.dart';
import 'dart:async';

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
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentQueuePosition > 0) {
        setState(
          () {
            currentQueuePosition--; // Dekrementuj pozycję w kolejce co 20 sekund
          },
        );
        if (currentQueuePosition == 3) {
// Wyświetl popup po osiągnięciu pozycji 3 w kolejce
          _showQueuePopup();
        }
      }
    });
  }

  void _showQueuePopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Jesteś 3 w kolejce'),
          content: const Text('Przygotuj się, jesteś 3 w kolejce.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    timer.cancel(); // Zatrzymaj timer, gdy widget zostanie usunięty
    super.dispose();
  }

