import 'package:http/http.dart' as http;

class Services{
  static var client = http.Client();

  static const headers = {
    'Accept': 'application/json', 
    'Content-Type': 'application/json'
  };

  static final url = 'http://192.168.43.9:8000/api/';

  static Future<String> getAll(String service) async{
    final response = await client.get(Uri.parse('$url$service'),headers: headers);
    if(response.statusCode == 200){
      return response.body;
    }else{
      return '';
    }
  }
}