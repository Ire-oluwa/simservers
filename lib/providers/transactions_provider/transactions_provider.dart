import 'package:flutter/foundation.dart';

class TransactionProvider extends ChangeNotifier {
  final List _currencies = ["Mtn", "Naira", "Airtel", "Glo"];
  final List _period = [
    "Today",
    "Last week",
    "month",
    "Last 30 days",
    "Last 60 days",
  ];

  List get currencies {
    return _currencies;
  }

  List get period {
    return _period;
  }
}
