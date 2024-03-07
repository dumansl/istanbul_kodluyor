class User {
  User({required this.email, required this.name, required this.lastName}) {}

  late String email;
  String? name;
  String? lastName;

  void displayInfo() {
    print("$name $lastName - $email");
  }
}
