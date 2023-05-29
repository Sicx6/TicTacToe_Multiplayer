import 'socket_client.dart';

class SocketMethod {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String username) {
    if (username.isNotEmpty) {
      _socketClient.emit('createRoom', {
        'username': username,
      });
    }
  }
}
