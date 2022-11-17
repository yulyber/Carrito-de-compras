import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() =>Center(
        //TODO
        // aquí debemos observar la variable total del shoppingController
        child: Text('Total: '+shoppingController.total.toString()+' usd',
            style: const TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 214, 55, 15),
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold)),
      )),
    );
  }
}
