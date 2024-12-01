import 'package:assignment_1/data/product/models/product.dart';

//////////////////////////////////////////////////////////////
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse('https://dummyjson.com/products');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
//////////////////////////////////////////////////////////////////////////////