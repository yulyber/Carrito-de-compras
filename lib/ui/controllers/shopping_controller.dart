import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';

class ShoppingController extends GetxController {
  // lista de productos
  var entries = <Product>[].obs;
  // el valor total de la compra
  var total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    entries.add(Product(0, "Toy car", 10));
    entries.add(Product(1, "Toy house", 20));
  }

  void calcularTotal() {
    logInfo('Calcular total ');
    int newTotal = 0;
    // TODO
    // calcular el valor total de los elementos en el carro de compras
    for (int i = 0; i < entries.length; i++) {
      newTotal = newTotal + entries[i].quantity * entries[i].price;
    }

    total.value = newTotal;
  }

  agregarProducto(id) {
    logInfo('agregarProducto $id');
    // TODO
    // Encontrar el elemento usando el id, revisar el método firstWhere de la lista
    Product elemento = entries.firstWhere((element) => element.id == id);
    // después obtener el index de ese elemento, revisar el método indexOf de la lista
    var index = entries.indexOf(elemento);
    // después hacer el incremento en la cantidad
    entries[index].quantity++;
    // finalmente actualizar entries usando el indice y el elemento actualizado
    entries.refresh;
    calcularTotal();
  }

  quitarProducto(id) {
    logInfo('quitarProducto $id');
    // TODO
    // similar a agregarProducto

    // Encontrar el elemento usando el id, revisar el método firstWhere de la lista
    Product elemento = entries.firstWhere((element) => element.id == id);
    // después obtener el index de ese elemento, revisar el método indexOf de la lista
    var index = entries.indexOf(elemento);
    // después hacer el incremento en la cantidad
    // validar cuando la cantidad es igual a cero
    if (entries[index].quantity > 0) {
      entries[index].quantity--;
    }

    // finalmente actualizar entries usando el indice y el elemento actualizado
    entries.refresh;

    calcularTotal();
  }
}
