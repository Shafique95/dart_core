import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  @HiveField(3)
  String address;

  @HiveField(4)
  String mobile;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.mobile,
  });
}
