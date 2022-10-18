import 'package:flutter/material.dart';

class EditProvider extends ChangeNotifier{
  final name = TextEditingController();
  final emailAddress = TextEditingController();
  final phoneNumber = TextEditingController();
  final stateAddress = TextEditingController();
  final homeAddress = TextEditingController();
}

class ChangePasswordSettingsProvider extends ChangeNotifier{
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();
}

class SetTransactionsPinProvider extends ChangeNotifier{
  final passwordController = TextEditingController();
  final newPinController = TextEditingController();
  final confirmNewPinController = TextEditingController();
}

class ResetApiKeyProvider extends ChangeNotifier{
  final oldKeyController = TextEditingController();
  final passwordController = TextEditingController();
}