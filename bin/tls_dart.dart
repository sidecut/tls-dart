// ignore: unused_import
import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  var log = File('tls-log.log');

  var socket = await SecureSocket.connect('httpbin.org', 443,
      keyLog: (line) => log.writeAsStringSync(line, mode: FileMode.append));
  try {
    socket.writeln("GET /get");
    socket.writeln("");
  } finally {
    socket.close();
  }
}
