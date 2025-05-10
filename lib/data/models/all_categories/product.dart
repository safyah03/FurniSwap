import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? id;
  final String? name;
  final int? price;
  final String? description;
  final String? imageUrl;
  final String? type;
  final String? condition;
  final String? status;

  const Product({
    this.id,
    this.name,
    this.price,
    this.description,
    this.imageUrl,
    this.type,
    this.condition,
    this.status,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as String?,
        name: json['name'] as String?,
        price: json['price'] as int?,
        description: json['description'] as String?,
        imageUrl: json['imageUrl'] as String?,
        type: json['type'] as String?,
        condition: json['condition'] as String?,
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'description': description,
        'imageUrl': imageUrl,
        'type': type,
        'condition': condition,
        'status': status,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      price,
      description,
      imageUrl,
      type,
      condition,
      status,
    ];
  }
}
