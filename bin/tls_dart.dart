// ignore: unused_import
import 'package:tls_dart/tls_dart.dart' as tls_dart;
import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  var url = Uri.https('httpbin.org', 'post');
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('httpbin.org', 'get')));
}
