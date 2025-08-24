class AuthResponse {
  final String message;
  final String token;
  final UserModel user;
  final String statusMsg;

  AuthResponse({
    required this.message,
    required this.token,
    required this.user,
    required this.statusMsg,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      message: json['message'],
      token: json['token'],
      user: UserModel.fromJson(json['user']),
      statusMsg: json['statusMsg'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'token': token,
      'user': user.toJson(),
      'statusMsg': statusMsg,
    };
  }
}

class UserModel {
  final String role;
  final String email;
  final String name;

  UserModel({
    required this.role,
    required this.email,
    required this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      role: json['role'],
      email: json['email'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'email': email,
      'name': name,
    };
  }
}
