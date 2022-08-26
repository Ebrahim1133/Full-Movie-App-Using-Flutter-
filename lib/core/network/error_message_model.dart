import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final bool success;
  final String statusMessage;

  ErrorMessageModel(
      {required this.success,
      required this.statusMessage,
      required this.statusCode});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      success: json["success"],
      statusCode: json["status_code"],
      statusMessage: json["status_message"],
    );
  }

  @override
  List<Object?> get props => [success, statusMessage, statusCode];
}
