// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Voucher {
    String code;
  String discount;

  String id;
  String name;
  bool isNewUser;
  int startingDate;
  int expiredDate;
  int createdDate;
  double? minPrice;
  double? discountPrice;
  double? discountPercentage;
  bool freeDelivery;

  Voucher({
    required this.code,
    required this.discount,
    required this.id,
    required this.name,
    required this.isNewUser,
    required this.startingDate,
    required this.expiredDate,
    required this.createdDate,
    required this.minPrice,
    this.discountPrice,
    this.discountPercentage,
    required this.freeDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'discount': discount,
      'id': id,
      'name': name,
      'isNewUser': isNewUser,
      'startingDate': startingDate,
      'expiredDate': expiredDate,
      'createdDate': createdDate,
      'minPrice': minPrice,
      'discountPrice': discountPrice,
      'discountPercentage': discountPercentage,
      'freeDelivery': freeDelivery,
    };
  }

  factory Voucher.fromMap(Map<String, dynamic> map) {
    return Voucher(
      code: map['code'] as String,
      discount: map['discount'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      isNewUser: map['isNewUser'] as bool,
      startingDate: map['startingDate'] as int,
      expiredDate: map['expiredDate'] as int,
      createdDate: map['createdDate'] as int,
      minPrice: map['minPrice'] != null ? map['minPrice'] as double : null,
      discountPrice: map['discountPrice'] != null ? map['discountPrice'] as double : null,
      discountPercentage: map['discountPercentage'] != null ? map['discountPercentage'] as double : null,
      freeDelivery: map['freeDelivery'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Voucher.fromJson(String source) =>
      Voucher.fromMap(json.decode(source) as Map<String, dynamic>);

  Voucher copyWith({
    String? code,
    String? discount,
    String? id,
    String? name,
    bool? isNewUser,
    int? startingDate,
    int? expiredDate,
    int? createdDate,
    double? minPrice,
    double? discountPrice,
    double? discountPercentage,
    bool? freeDelivery,
  }) {
    return Voucher(
      code: code ?? this.code,
      discount: discount ?? this.discount,
      id: id ?? this.id,
      name: name ?? this.name,
      isNewUser: isNewUser ?? this.isNewUser,
      startingDate: startingDate ?? this.startingDate,
      expiredDate: expiredDate ?? this.expiredDate,
      createdDate: createdDate ?? this.createdDate,
      minPrice: minPrice ?? this.minPrice,
      discountPrice: discountPrice ?? this.discountPrice,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      freeDelivery: freeDelivery ?? this.freeDelivery,
    );
  }

  @override
  String toString() {
    return 'Voucher(code: $code, discount: $discount, id: $id, name: $name, isNewUser: $isNewUser, startingDate: $startingDate, expiredDate: $expiredDate, createdDate: $createdDate, minPrice: $minPrice, discountPrice: $discountPrice, discountPercentage: $discountPercentage, freeDelivery: $freeDelivery)';
  }

  @override
  bool operator ==(covariant Voucher other) {
    if (identical(this, other)) return true;
  
    return 
      other.code == code &&
      other.discount == discount &&
      other.id == id &&
      other.name == name &&
      other.isNewUser == isNewUser &&
      other.startingDate == startingDate &&
      other.expiredDate == expiredDate &&
      other.createdDate == createdDate &&
      other.minPrice == minPrice &&
      other.discountPrice == discountPrice &&
      other.discountPercentage == discountPercentage &&
      other.freeDelivery == freeDelivery;
  }

  @override
  int get hashCode {
    return code.hashCode ^
      discount.hashCode ^
      id.hashCode ^
      name.hashCode ^
      isNewUser.hashCode ^
      startingDate.hashCode ^
      expiredDate.hashCode ^
      createdDate.hashCode ^
      minPrice.hashCode ^
      discountPrice.hashCode ^
      discountPercentage.hashCode ^
      freeDelivery.hashCode;
  }
}
