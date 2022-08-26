// ignore: unused_import
import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  var client = HttpClient();
  try {
    var request = await client.getUrl(Uri.https('httpbin.org', 'get'));
    var response = await request.close();
    print('${response.statusCode}\n');
    print('$response\n');
  } finally {
    client.close();
  }
}
