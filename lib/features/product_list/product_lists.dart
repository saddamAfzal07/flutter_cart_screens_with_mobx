import 'package:flutter/material.dart';
import 'package:flutter_cart_screens/controller/cart_controller.dart';
import 'package:flutter_cart_screens/features/cart/cart_screen.dart';
import 'package:flutter_cart_screens/model/product_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    final state = context.read<CartController>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shoes"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()));
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Observer(builder: ((context) {
                    return Text(
                      state.counter.toString(),
                      style: const TextStyle(fontSize: 20),
                    );
                  })),
                ],
              ),
            )
          ],
        ),
        body: Observer(builder: (context) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: state.product.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {},
                      leading: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            state.product[index].image.toString(),
                            fit: BoxFit.cover,
                          )),
                      title: Text(
                        state.product[index].name.toString(),
                      ),
                      subtitle: Text(
                        "\$ ${state.product[index].price}",
                      ),
                      trailing: ElevatedButton(
                          onPressed: () {
                            state.addtoCart(state.product[index]);
                          },
                          child: const Text("Add to Cart")),
                    );
                  },
                ),
              ),
            ],
          );
        }));
  }
}
