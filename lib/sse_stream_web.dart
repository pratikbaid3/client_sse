import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart';

var fetchClient = FetchClient(mode: RequestMode.cors);

newClient() {
  fetchClient = FetchClient(mode: RequestMode.cors);
}

Future<ByteStream> getStream(Request request) async {
  final FetchResponse response = await fetchClient.send(request);
  return response.stream;
}

close() {
  fetchClient.close();
}
