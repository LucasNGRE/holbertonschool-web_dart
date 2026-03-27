import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final decoded = jsonDecode(userData);
  return decoded['id'];
}