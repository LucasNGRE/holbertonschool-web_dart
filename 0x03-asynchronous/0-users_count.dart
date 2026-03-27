import '0-util.dart';

usersCount() async {
  final count = await fetchUsersCount();
  print("$count");
}