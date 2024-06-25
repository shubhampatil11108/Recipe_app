class User {
  String username;
  String password;

  User({required this.username, required this.password});

  // Method to convert User object to Map for storage
  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  // Method to create User object from Map retrieved from storage
  static User fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'],
      password: map['password'],
    );
  }
}
