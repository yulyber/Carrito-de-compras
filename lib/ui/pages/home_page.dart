import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widgets/banner.dart';
import '../Widgets/cart_total.dart';
import 'product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      const Text("Tienda ABC",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 255, 255, 255),
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold)),
      Stack(
        children: [buildProfileImage(), customAppBar()],
      ),
      const SizedBox(
        height: 60,
      ),
      const Text(
        "Eduardo Moreno",
        style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 182, 94, 11),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      const Text(
        "Emoreno@correo.com",
        style: TextStyle(
            fontSize: 10.0,
            color: Color.fromARGB(255, 182, 94, 11),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      CartTotal(),
      const Text("NRC2291 Grupo 2",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 182, 94, 11),
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold)),
      const SizedBox(
        height: 20,
      ),
    ]));
  }

  Widget buildProfileImage() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        CustomBanner(200),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://social.webestica.com/assets/images/avatar/06.jpg"),
          radius: 60.0,
        )
      ],
    );
  }

  Widget customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.to(() => ProductList(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 1)),
            child: const Icon(
              Icons.shopping_cart,
              size: 50,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
