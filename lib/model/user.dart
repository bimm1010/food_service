class User {
  String? fullName;
  String? email;
  String? pass;
  User(this.fullName, this.email, this.pass);

  User.fromJson(Map<String, dynamic> item) {
    fullName = item[0];
    email = item[1];
    pass = item[2];
  }
}
