import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel(
    this.statusCode,
    this.statusMessage,
    this.success,
  );

  @override
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      json["statusCode"],
      json["statusMessage"],
      json["success"],
    );
  }
}
