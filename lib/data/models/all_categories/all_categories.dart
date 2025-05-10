import 'package:equatable/equatable.dart';

import 'data.dart';

class AllCategories extends Equatable {
  final String? status;
  final String? message;
  final Data? data;

  const AllCategories({this.status, this.message, this.data});

  factory AllCategories.fromJson(Map<String, dynamic> json) => AllCategories(
        status: json['status'] as String?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [status, message, data];
}
