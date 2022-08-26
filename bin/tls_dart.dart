// ignore: unused_import
import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  var client = HttpClient();
  try {
    var request = await client.getUrl(Uri.https('httpbin.org', 'get'));
    var response = await request.close();
    print('${response.statusCode}');
    print('${response.headers.contentType}');
    print('${response.certificate?.pem}');
    print("");

    var body = await response.transform(utf8.decoder).join();
    print(body);
  } finally {
    client.close();
  }
}
