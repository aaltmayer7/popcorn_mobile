// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'burger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BurgerModel _$BurgerModelFromJson(Map<String, dynamic> json) {
  return _BurgerModel.fromJson(json);
}

class _$BurgerModelTearOff {
  const _$BurgerModelTearOff();

// ignore: unused_element
  _BurgerModel call({@required String name}) {
    return _BurgerModel(
      name: name,
    );
  }
}

// ignore: unused_element
const $BurgerModel = _$BurgerModelTearOff();

mixin _$BurgerModel {
  String get name;

  Map<String, dynamic> toJson();
  $BurgerModelCopyWith<BurgerModel> get copyWith;
}

abstract class $BurgerModelCopyWith<$Res> {
  factory $BurgerModelCopyWith(
          BurgerModel value, $Res Function(BurgerModel) then) =
      _$BurgerModelCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$BurgerModelCopyWithImpl<$Res> implements $BurgerModelCopyWith<$Res> {
  _$BurgerModelCopyWithImpl(this._value, this._then);

  final BurgerModel _value;
  // ignore: unused_field
  final $Res Function(BurgerModel) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$BurgerModelCopyWith<$Res>
    implements $BurgerModelCopyWith<$Res> {
  factory _$BurgerModelCopyWith(
          _BurgerModel value, $Res Function(_BurgerModel) then) =
      __$BurgerModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$BurgerModelCopyWithImpl<$Res> extends _$BurgerModelCopyWithImpl<$Res>
    implements _$BurgerModelCopyWith<$Res> {
  __$BurgerModelCopyWithImpl(
      _BurgerModel _value, $Res Function(_BurgerModel) _then)
      : super(_value, (v) => _then(v as _BurgerModel));

  @override
  _BurgerModel get _value => super._value as _BurgerModel;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_BurgerModel(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_BurgerModel implements _BurgerModel {
  const _$_BurgerModel({@required this.name}) : assert(name != null);

  factory _$_BurgerModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BurgerModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'BurgerModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BurgerModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$BurgerModelCopyWith<_BurgerModel> get copyWith =>
      __$BurgerModelCopyWithImpl<_BurgerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BurgerModelToJson(this);
  }
}

abstract class _BurgerModel implements BurgerModel {
  const factory _BurgerModel({@required String name}) = _$_BurgerModel;

  factory _BurgerModel.fromJson(Map<String, dynamic> json) =
      _$_BurgerModel.fromJson;

  @override
  String get name;
  @override
  _$BurgerModelCopyWith<_BurgerModel> get copyWith;
}
