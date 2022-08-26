// ignore: unused_import
import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  var client = HttpClient();
  try {
    HttpClientRequest request =
        await client.get('httpbin.org', 80, '/file.txt');
    // Optionally set up headers...
    // Optionally write to the request object...
    HttpClientResponse response = await request.close();
    // Process the response
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}
