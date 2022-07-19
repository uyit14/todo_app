import 'package:get/get.dart';

class ApiConnection extends GetConnect {
  // Get request
  Future<Response> getCallList() =>
      get('https://my-json-server.typicode.com/imkhan334/demo-1/call');

  Future<Response> getBuyList() =>
      get('https://my-json-server.typicode.com/imkhan334/demo-1/buy');
}
