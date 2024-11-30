//Responsible to fetch data from internet
// In terminal flutter pub add http than we have use library
import 'package:assignment_1/data/product/models/product.dart';

//////////////////////////copy same except url////////////////////////////////////
import 'package:http/http.dart' as http;

class RemoteService {
  //uses a future because of delay in loading json
  Future<List<Post>?> getPost() async {
    //this is client object
    var client = http.Client();

    var uri = Uri.parse('https://dummyjson.com/products');
    var response = await client.get(uri);

    // 200 is a success code there is a more detail about it
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
//////////////////////////////////////////////////////////////////////////////