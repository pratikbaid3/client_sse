import 'package:http/http.dart';

var client = Client();

newClient() {
  client = Client();
}

Future<ByteStream> getStream(Request request) async {
  StreamedResponse response = await client.send(request);
  return response.stream;
}

close() {
  client.close();
}
