import 'package:flutter/material.dart';

class FAQProvider extends ChangeNotifier{
  late bool isQuestionClicked = false;

  showAnswer(){
    isQuestionClicked = true;
    
  }
}