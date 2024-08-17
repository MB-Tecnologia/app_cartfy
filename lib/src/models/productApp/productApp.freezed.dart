// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productApp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductApp _$ProductAppFromJson(Map<String, dynamic> json) {
  return _ProductApp.fromJson(json);
}

/// @nodoc
mixin _$ProductApp {
  @JsonKey(name: 'avgPrice')
  double? get price =>
      throw _privateConstructorUsedError; //Lembrar que é preço medio
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'gtin')
  double? get gtin => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get imgUrl => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAppCopyWith<ProductApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAppCopyWith<$Res> {
  factory $ProductAppCopyWith(
          ProductApp value, $Res Function(ProductApp) then) =
      _$ProductAppCopyWithImpl<$Res, ProductApp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avgPrice') double? price,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'gtin') double? gtin,
      @JsonKey(name: 'img') String? imgUrl,
      int? quantity});
}

/// @nodoc
class _$ProductAppCopyWithImpl<$Res, $Val extends ProductApp>
    implements $ProductAppCopyWith<$Res> {
  _$ProductAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? description = freezed,
    Object? gtin = freezed,
    Object? imgUrl = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gtin: freezed == gtin
          ? _value.gtin
          : gtin // ignore: cast_nullable_to_non_nullable
              as double?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductAppCopyWith<$Res>
    implements $ProductAppCopyWith<$Res> {
  factory _$$_ProductAppCopyWith(
          _$_ProductApp value, $Res Function(_$_ProductApp) then) =
      __$$_ProductAppCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avgPrice') double? price,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'gtin') double? gtin,
      @JsonKey(name: 'img') String? imgUrl,
      int? quantity});
}

/// @nodoc
class __$$_ProductAppCopyWithImpl<$Res>
    extends _$ProductAppCopyWithImpl<$Res, _$_ProductApp>
    implements _$$_ProductAppCopyWith<$Res> {
  __$$_ProductAppCopyWithImpl(
      _$_ProductApp _value, $Res Function(_$_ProductApp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? description = freezed,
    Object? gtin = freezed,
    Object? imgUrl = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_ProductApp(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gtin: freezed == gtin
          ? _value.gtin
          : gtin // ignore: cast_nullable_to_non_nullable
              as double?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ProductApp implements _ProductApp {
  const _$_ProductApp(
      {@JsonKey(name: 'avgPrice') this.price,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'gtin') this.gtin,
      @JsonKey(name: 'img') this.imgUrl,
      this.quantity = 1});

  factory _$_ProductApp.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAppFromJson(json);

  @override
  @JsonKey(name: 'avgPrice')
  final double? price;
//Lembrar que é preço medio
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'gtin')
  final double? gtin;
  @override
  @JsonKey(name: 'img')
  final String? imgUrl;
  @override
  @JsonKey()
  final int? quantity;

  @override
  String toString() {
    return 'ProductApp(price: $price, description: $description, gtin: $gtin, imgUrl: $imgUrl, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductApp &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gtin, gtin) || other.gtin == gtin) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, description, gtin, imgUrl, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductAppCopyWith<_$_ProductApp> get copyWith =>
      __$$_ProductAppCopyWithImpl<_$_ProductApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAppToJson(
      this,
    );
  }
}

abstract class _ProductApp implements ProductApp {
  const factory _ProductApp(
      {@JsonKey(name: 'avgPrice') final double? price,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'gtin') final double? gtin,
      @JsonKey(name: 'img') final String? imgUrl,
      final int? quantity}) = _$_ProductApp;

  factory _ProductApp.fromJson(Map<String, dynamic> json) =
      _$_ProductApp.fromJson;

  @override
  @JsonKey(name: 'avgPrice')
  double? get price;
  @override //Lembrar que é preço medio
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'gtin')
  double? get gtin;
  @override
  @JsonKey(name: 'img')
  String? get imgUrl;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAppCopyWith<_$_ProductApp> get copyWith =>
      throw _privateConstructorUsedError;
}
