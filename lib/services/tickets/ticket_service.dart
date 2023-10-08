import 'dart:async';
import 'dart:collection';
//import 'dart:developer' as dev;

class TicketService {
  static final _ticketQueue = Queue<int>();
  static int _ticketCounter = 23;
  static int _queueElementsCounter = 0;
  static int _loopCounterTest = 0;

  static void addToTicketQueue() {
    _ticketQueue.addLast(1);
    _queueElementsCounter = _ticketQueue.length;
    _ticketCounter++;
  }

  static void removeFromTicketQueue() {
    _ticketQueue.removeFirst();
    //_ticketCounter++;
  }

  static void setupQueue() {
    for (int i = 1; i < 16; i++) {
      _ticketQueue.add(i);
      _ticketCounter++;
    }
  }

  static void queueSimulator() {
    try {
      addToTicketQueue();
      addToTicketQueue();
      addToTicketQueue();
      addToTicketQueue();
      addToTicketQueue();
      addToTicketQueue();
      Timer.periodic(const Duration(seconds: 5), (Timer t) {
        if (_loopCounterTest < 5) {
          removeFromTicketQueue();
          _loopCounterTest += 1;
        } else {
          t.cancel(); // Zakończ timer po 5 iteracjach
        }
      });
    } catch (e) {}
  }

  static int getTicketCounter() {
    return _ticketCounter;
  }

  static int getQueueElementsCounter() {
    return _queueElementsCounter;
  }
}
