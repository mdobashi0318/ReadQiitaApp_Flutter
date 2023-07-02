

import 'package:http/http.dart' as http;


 class APIManager {
  Future<String> get(String reqest) async {
    var url = Uri.https('qiita.com', '/api/v2/$reqest');
    var response = await http.get(url);
    return response.body;
  }
}


