// import 'package:freezed/builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart';

part 'productApp.freezed.dart';
part 'productApp.g.dart';


@freezed
class ProductApp with _$ProductApp{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson:true)
  const factory ProductApp({
    @JsonKey(name: 'avgPrice') double? price, //Lembrar que é preço medio
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'gtin') double? gtin,
    @JsonKey(name: 'img') String? imgUrl,
    @Default(1) int? quantity


  }) = _ProductApp;


  factory ProductApp.fromJson(Map<String, dynamic> json) =>
    _$ProductAppFromJson(json);
}

// public string Description { get; set; }
//         public double? AvgPrice { get; set; }
//         public long Gtin { get; set; }
//         public string Img { get; set; }

