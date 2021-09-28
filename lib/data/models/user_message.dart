import 'user.dart';

class UserMessage {
  int id;

  int user_id;

  int writer_id;

  String title;

  String message;

  String type; // push, notice, order, pay 등


  String subtype;

  String read_at;

  String created_at;

  String updated_at;

  User user;

  User writer;
}