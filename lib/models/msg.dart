import 'models.dart';

class Messages {
  final User user;
  final String msg;
  final String numberOfMsg;
  final String time;
  final String type;
  const Messages({
    required this.user,
    required this.msg,
    required this.numberOfMsg,
    required this.time,
    this.type = 'in',
  });
}
