import 'package:get/get.dart';
import 'package:mymart/model/item_model.dart';
import 'package:mymart/services/services.dart';

class ItemsControllers extends GetxController {
  final isLoading = true.obs;
  var items = [].obs;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  void fetchItems() async {
    isLoading(true);
    try {
      String response = await Services.getAll('items');

      if (response != '') {
        items.value = itemsFromJson(response);
      }
    } finally {
      isLoading(false);
    }
  }
}
