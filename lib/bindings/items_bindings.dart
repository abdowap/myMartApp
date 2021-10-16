import 'package:get/get.dart';
import 'package:mymart/controllers/items_controllers.dart';


class ItemsBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ItemsControllers>(()=> ItemsControllers());
  }
  
}