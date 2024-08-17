// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productApp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductApp _$$_ProductAppFromJson(Map<String, dynamic> json) =>
    _$_ProductApp(
      price: (json['avgPrice'] as num?)?.toDouble(),
      description: json['description'] as String?,
      gtin: (json['gtin'] as num?)?.toDouble(),
      imgUrl: json['img'] as String?,
      quantity: json['quantity'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ProductAppToJson(_$_ProductApp instance) =>
    <String, dynamic>{
      'avgPrice': instance.price,
      'description': instance.description,
      'gtin': instance.gtin,
      'img': instance.imgUrl,
      'quantity': instance.quantity,
    };
