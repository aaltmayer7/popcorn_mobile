import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'burger_model.freezed.dart';
part 'burger_model.g.dart';

@freezed
abstract class BurgerModel with _$BurgerModel {
  const factory BurgerModel({
    @required String name,
  }) = _BurgerModel;

  factory BurgerModel.fromJson(Map<String, dynamic> json) =>
      _$BurgerModelFromJson(json);
}
