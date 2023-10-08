import 'package:flutter/material.dart';
import 'dart:async';

class QueuePage extends StatefulWidget {
  @override
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
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
          title: Text('Jesteś 3 w kolejce'),
          content: Text('Przygotuj się, jesteś 3 w kolejce.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kolejka w Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Twoja obecna pozycja w kolejce:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '$currentQueuePosition',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QueuePage(), // Wykorzystaj nową klasę z widgetem StatefulWidget
    );
  }
}
