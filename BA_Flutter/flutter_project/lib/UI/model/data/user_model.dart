class UserModel {
  final String name;
  final String password;
  final String email;
  final String login;

  UserModel( {required this.name,
    required this.password,
    required this.email,required this.login});


  factory UserModel.fromJson(Map<String, dynamic>jsonData){
    return UserModel(
        name: jsonData['name'],
        password: jsonData['password'],
        email: jsonData['email'],
        login: jsonData['login']);
  }

  Map<String , dynamic> toJson(){
    return {
      'name': name,
      'password': password,
      'email': email,
      'login': login,
    };
  }


}
