class User {
  final String id;
  final String name;
  final String email;
  final String? password; // Optional for security reasons

  const User({
    required this.id,
    required this.name,
    required this.email,
    this.password,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.id == id &&
        other.name == name &&
        other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email)';
  }
}
