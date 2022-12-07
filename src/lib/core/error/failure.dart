import 'package:equatable/equatable.dart';
import 'package:tv_app/core/network/error_message_mode.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(
    this.message,
  );

  @override
  List<Object> get props => [message];
}

class ServerFauilure extends Failure {
  const ServerFauilure(super.message);
}

class DataBaseFauilure extends Failure {
  const DataBaseFauilure(super.message);
}
