import '../../../../utils/color.dart';

class User {
  String username;
  String password;
  String number;
  String userid;

  User({required this.username, required this.password,required this.number,required this.userid});
}

List<User> users = [];
bool signUp({required String username, required String password,required String num,required String userid}) {
  final newUser = User(username: username, password: password,number: num,userid: userid);
  users.add(newUser);
  navigation = true;
  print("User registered successfully!");
  return true;
}
bool login({required String username, required String password,required String userid}) {
  for (var user in users) {
    if (user.username == username && user.password == password && user.userid==userid) {
      print("Login successful!");
      navigation = false;
      return true;
    }
  }
  print("Login failed!");
  return false;
}
