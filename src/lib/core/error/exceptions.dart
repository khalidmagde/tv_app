import 'package:tv_app/core/network/error_message_mode.dart';

class ServerEception implements Exception {
  final ErrorMessageModel? errorMessageModel;

  ServerEception(this.errorMessageModel);
}

class LocalDatabaseExcption implements Exception {
  final String message;

  LocalDatabaseExcption(this.message);
}
