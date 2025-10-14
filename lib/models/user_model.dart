class UserModel {
  final int id;
  final String name;
  final String email;
  final String password;

  UserModel({required this.id, required this.email, required this.name, required this.password});

  @override
  String toString() {
    return '<UserModel | id: ${id}>';
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'email': email, 'name': name, 'password': password};
  }

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      email: data['email'],
      name: data['name'],
      password: data['password'],
    );
  }
}
