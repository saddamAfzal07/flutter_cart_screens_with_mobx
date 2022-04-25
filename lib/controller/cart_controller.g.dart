// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on Cart, Store {
  late final _$productAtom = Atom(name: 'Cart.product', context: context);

  @override
  List<ProductModel> get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(List<ProductModel> value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$cartProductsAtom =
      Atom(name: 'Cart.cartProducts', context: context);

  @override
  List<ProductModel> get cartProducts {
    _$cartProductsAtom.reportRead();
    return super.cartProducts;
  }

  @override
  set cartProducts(List<ProductModel> value) {
    _$cartProductsAtom.reportWrite(value, super.cartProducts, () {
      super.cartProducts = value;
    });
  }

  late final _$counterAtom = Atom(name: 'Cart.counter', context: context);

  @override
  int? get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int? value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$priceAtom = Atom(name: 'Cart.price', context: context);

  @override
  double? get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(double? value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  late final _$productCountAtom =
      Atom(name: 'Cart.productCount', context: context);

  @override
  int get productCount {
    _$productCountAtom.reportRead();
    return super.productCount;
  }

  @override
  set productCount(int value) {
    _$productCountAtom.reportWrite(value, super.productCount, () {
      super.productCount = value;
    });
  }

  late final _$addProductPriceAtom =
      Atom(name: 'Cart.addProductPrice', context: context);

  @override
  double? get addProductPrice {
    _$addProductPriceAtom.reportRead();
    return super.addProductPrice;
  }

  @override
  set addProductPrice(double? value) {
    _$addProductPriceAtom.reportWrite(value, super.addProductPrice, () {
      super.addProductPrice = value;
    });
  }

  late final _$totalPriceAtom = Atom(name: 'Cart.totalPrice', context: context);

  @override
  double? get totalPrice {
    _$totalPriceAtom.reportRead();
    return super.totalPrice;
  }

  @override
  set totalPrice(double? value) {
    _$totalPriceAtom.reportWrite(value, super.totalPrice, () {
      super.totalPrice = value;
    });
  }

  late final _$CartActionController =
      ActionController(name: 'Cart', context: context);

  @override
  dynamic addtoCart(ProductModel item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.addtoCart');
    try {
      return super.addtoCart(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementProduct(ProductModel item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.incrementProduct');
    try {
      return super.incrementProduct(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementProduct(ProductModel item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.decrementProduct');
    try {
      return super.decrementProduct(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
product: ${product},
cartProducts: ${cartProducts},
counter: ${counter},
price: ${price},
productCount: ${productCount},
addProductPrice: ${addProductPrice},
totalPrice: ${totalPrice}
    ''';
  }
}
