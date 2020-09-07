class UserModel {
  String id;
  String name;
  String email;
  String token;
  UserModel({this.email, this.id, this.name, this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['data']['id'].toString(),
      name: json['data']['name'],
      email: json['data']['email'],
      token: json['token']);
}
