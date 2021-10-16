import 'package:get/get.dart';
import 'package:mymart/model/item_model.dart';

class ItemsProvider extends GetConnect{

  Map<String , String> headers = {
    'Accept': 'application/json', 
    'Content-Type': 'application/json'
  };

  final url = 'http://192.168.43.9:8000/api/items';

  Future<List<Items>> itemList() async{
    final response = await get(url,headers: headers);
    if(response.status.hasError){
      return Future.error(response.status);
    }else{
      return itemsFromJson(response.bodyString!);
    }
  }
}