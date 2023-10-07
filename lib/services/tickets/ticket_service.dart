import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'dart:developer' as dev;

class TicketService {
  static final _ticketQueue = Queue<int>();
  static int _ticketCounter = 0;
  static int _queueElementsCounter = 0;
  static int _loopCounterTest = 0;

  static void addToTicketQueue() {
    _ticketQueue.addLast(1);
    _queueElementsCounter = _ticketQueue.length;
    _ticketCounter++;
  }

  static void removeFromTicketQueue() {
    _ticketQueue.removeFirst();
  }

  static void setupQueue() {
    for (int i = 1; i < 16; i++) {
      _ticketQueue.add(i);
      _ticketCounter++;
    }
  }

  static void queueSimulator() {
    Random rand = Random();
    int randomNumber = rand.nextInt(2);
    while (_loopCounterTest < 5) {
      Timer.periodic(const Duration(seconds: 2), (Timer t) {
        if (randomNumber != 1) {
          addToTicketQueue();
        } else {
          removeFromTicketQueue();
        }
        _loopCounterTest += 1;
      });
    }
  }

  static int getTicketCounter() {
    return _ticketCounter;
  }

  static int getQueueElementsCounter() {
    return _queueElementsCounter;
  }
}
