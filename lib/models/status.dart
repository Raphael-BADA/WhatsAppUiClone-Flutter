import 'models.dart';

class Status {
  final User user;
  final String statusPicture;
  final String statusTime;
  const Status({
    required this.user,
    required this.statusPicture,
    required this.statusTime,
  });
}
