import 'package:flutter/material.dart';
import 'package:flutter_cart_screens/controller/cart_controller.dart';
import 'package:flutter_cart_screens/model/product_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.read<CartController>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Observer(builder: (context) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    itemCount: state.cartProducts.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              state.cartProducts[index].image.toString(),
                              fit: BoxFit.cover,
                            )),
                        title: Text(state.cartProducts[index].name.toString()),
                        subtitle: Container(
                          // color: Colors.green,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                  onTap: () {
                                    state.incrementProduct(
                                        state.cartProducts[index]);
                                    print("increment click");
                                    print(state.cartProducts[index]);
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.blue,
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Observer(
                                builder: ((context) {
                                  return Text(
                                    state.productCount.toString(),
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  );
                                }),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                  onTap: () {
                                    state.decrementProduct(
                                        state.cartProducts[index]);
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.blue,
                                  )),
                            ],
                          ),
                        ),
                        trailing: Text(
                          "\$ ${state.cartProducts[index].price}",
                          style: const TextStyle(
                              fontSize: 22.0, color: Colors.blue),
                        ),
                        // trailing: Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {}, icon: const Icon(Icons.add))
                        //   ],
                        // )
                      );
                    })),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                height: 70,
                width: double.infinity,
                child: Text(
                  "Total Price: ${state.totalPrice.toString()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        }));
  }
}
