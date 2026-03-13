import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? user_password;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    this.user_password,
  }) : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? "",
      'age': age ?? 0,
      'height': height ?? 0.0,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password'],
    );
  }

  @override
  String toString() {
    password = user_password;
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}