import 'package:json_annotation/json_annotation.dart';

part 'user_models.g.dart';

@JsonSerializable()
class UserModel {
  UserModel();

  Uri? avatar;
  String? email;
  @JsonKey(ignore: true)       String? objectId;
  @JsonKey(defaultValue: '')   String firstName = '';
  @JsonKey(defaultValue: '')   String lastName = '';

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}