import 'dart:collection';

class TicketService {
  final _ticketQueue = Queue<int>();
  int _ticketCounter = 0;
  int _queueElementsCounter = 0;

  void addToTicketQueue() {
    _ticketQueue.addLast(1);
    _ticketCounter++;
  }

  void removeFromTicketQueue() {
    _ticketQueue.removeFirst();
  }

  int getTicketCounter() {
    return _ticketCounter;
  }

  int getQueueElementsCounter() {
    return _queueElementsCounter;
  }
}
