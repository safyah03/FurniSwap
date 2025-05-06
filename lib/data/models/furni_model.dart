class FurniModel {
  String? status;
  String? message;

  FurniModel({this.status, this.message});

  factory FurniModel.fromJson(Map<String, dynamic> json) => FurniModel(
        status: json['status'] as String?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
      };
}
