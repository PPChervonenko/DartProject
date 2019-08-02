import 'package:json_annotation/json_annotation.dart';
part 'api.response.g.dart';


@JsonSerializable()
class UserResponse{
 UserResponse(this.results);
  List<dynamic> results;

  factory UserResponse.fromJson(Map<String, dynamic> json)=>  _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

}

@JsonSerializable()
class User {
  User(this.id, this.firstName, this.lastName, this.active, this.company ,this.salary);
  int id;
  @JsonKey(nullable: true)
  String firstName;
  @JsonKey(nullable: true)
  String lastName;
  @JsonKey(nullable: true)
  String active;
  @JsonKey(nullable: true)
  String company;
  @JsonKey(nullable: true)
  int salary;

  factory User.fromJson(Map<String, dynamic> json)=>  _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}


