import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymart/controllers/items_controllers.dart';
class ItemsScreen extends StatelessWidget {

final itemList = Get.put(ItemsControllers());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Mymart'),),
          body: Obx(()=> 
          ListView.builder(
            itemCount: itemList.items.length,
            itemBuilder: (context,index){
              return ListTile(title: Text('${itemList.items[index].name}'),);
            }),
          ),
      ),
    );
  }
}