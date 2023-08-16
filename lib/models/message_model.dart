import './user_model.dart';

class Message {
  final User sender;
  final String avatar;
  final String time;
  int? unreadCount;
  bool? isRead;
  final String text;

  Message({
    required this.sender,
    required this.avatar,
    required this.time,
    this.unreadCount,
    required this.text,
    this.isRead,
  });
}
