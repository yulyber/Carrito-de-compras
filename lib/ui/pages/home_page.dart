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
      Stack(
        children: [buildProfileImage(), customAppBar()],
      ),
      const SizedBox(
        height: 60,
      ),
      const Text("Grupo 4 Carrito De Compras", textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 182, 94, 11),
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold)),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Eduardo Moreno",
        style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(115, 219, 63, 123),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      const Text(
        "Yuly Berbesi",
        style: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(115, 219, 63, 123),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      const Text(
        "Barbara Alvarez",
        style: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(115, 219, 63, 123),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      const Text(
        "Diana",
        style: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(115, 219, 63, 123),
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold),
      ),
      CartTotal()
    ]));
  }

  Widget buildProfileImage() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        CustomBanner(200),
        CircleAvatar(
          backgroundImage:
              NetworkImage("https://previews.123rf.com/images/tuktukdesign/tuktukdesign1608/tuktukdesign160800055/61010890-icono-de-usuario-hombre-perfil-hombre-de-negocios-avatar-ilustraci%C3%B3n-vectorial-persona-glifo.jpg"),
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
              Icons.menu_rounded,
              size: 50,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

