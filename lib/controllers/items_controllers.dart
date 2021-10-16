import 'package:get/get.dart';
import 'package:mymart/providers/items_provider.dart';

class ItemsControllers extends GetxController {
  final isLoading = true.obs;
  var items = [].obs;

  ItemsProvider _provider = ItemsProvider();
  @override
  void onInit() {
    super.onInit();
    _provider.itemList().then((response) {
       response.map((e) => items.add(e));
    }
    , onError: (err) {
      print(err.toString());
      // change(null, status: RxStatus.error(err.toString()));
    }
    );
  }
}
