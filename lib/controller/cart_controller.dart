import 'package:flutter_cart_screens/model/product_model.dart';
import 'package:mobx/mobx.dart';
part 'cart_controller.g.dart';

class CartController = Cart with _$CartController;

abstract class Cart with Store {
  @observable
  List<ProductModel> product = [
    ProductModel(image: "assets/images/shoes1.jpg", name: "Puma X", price: 20),
    ProductModel(image: "assets/images/shoes2.jpg", name: "Puma XI", price: 60),
    ProductModel(image: "assets/images/shoes3.jpg", name: "Puma 09", price: 40),
    ProductModel(image: "assets/images/shoes4.jpg", name: "Puma XI", price: 57),
    ProductModel(image: "assets/images/shoes5.jpg", name: "Puma XI", price: 10),
    ProductModel(image: "assets/images/shoes6.jpg", name: "Puma XI", price: 90),
    ProductModel(image: "assets/images/shoes7.jpg", name: "Puma XI", price: 35),
  ];
  @observable
  List<ProductModel> cartProducts = [];
  List<ProductModel> addMoreProducts = [];

  @observable
  int? counter = 0;
  @observable
  double? price = 0;
  @observable
  int productCount = 1;
  @observable
  double? addProductPrice;
  double? removeProductPrice;

  @observable
  double? totalPrice = 0;

  @action
  addtoCart(ProductModel item) {
    cartProducts.add(item);
    counter = cartProducts.length;
    price = cartProducts.fold(0, (sum, item) => sum! + item.price!.toDouble());
    addProductPrice =
        addMoreProducts.fold(0, (sum, item) => sum! + item.price!.toDouble());
    totalPrice = price! + addProductPrice!.toInt();
  }

  @action
  incrementProduct(ProductModel item) {
    addMoreProducts.add(item);
    productCount++;
    // print(addMoreProducts);
    addProductPrice =
        addMoreProducts.fold(0, (sum, item) => sum! + item.price!.toDouble());
    totalPrice = price! + addProductPrice!.toInt();
    // print(addProductPrice);
    // print("===>--");
    // print(price);
  }

  @action
  decrementProduct(ProductModel item) {
    addMoreProducts.remove(item);
    print(addMoreProducts);
    productCount--;
    // print(addMoreProducts);
    removeProductPrice =
        addMoreProducts.fold(0, (sum, item) => sum! + item.price!.toDouble());

    // print(removeProductPrice);
    // print("===>--");
    // print(price);
    totalPrice = removeProductPrice!.toInt() + price!;
    // print(totalPrice);
  }
}
