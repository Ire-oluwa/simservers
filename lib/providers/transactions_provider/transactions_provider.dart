import 'package:flutter/foundation.dart';

class TransactionProvider extends ChangeNotifier {
  final List _currencies = ["Mtn", "Naira", "Airtel", "Glo"];
  final List _period = [
    "Today",
    "last week",
    "month",
    "last 30 days",
    "last 60 days",
  ];

  List get currencies {
    return _currencies;
  }

  List get period {
    return _period;
  }
}
