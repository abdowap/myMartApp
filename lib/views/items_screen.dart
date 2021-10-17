import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mymart/controllers/items_controllers.dart';

import 'items_title.dart';

class ItemsScreen extends StatelessWidget {
  final itemList = Get.put(ItemsControllers());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Mymart'),
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'My Mart',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                  )),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.view_list_rounded)),
                  IconButton(onPressed: null, icon: Icon(Icons.grid_view))
                ],
              ),
            ),
            Expanded(
              child:Obx((){  
                if(itemList.isLoading.value)
                return Center(child: CircularProgressIndicator());
                else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: itemList.items.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ItemsTitle(itemList.items[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1));}
            ))
          ],
        ),
      ),
    );
  }
}
