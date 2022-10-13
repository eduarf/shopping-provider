import 'package:flutter/cupertino.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Sweat Shirt',
      description: 'Prepare any meal you want.',
      price: 69.99,
      imageUrl:
          'https://cdn-gap.akinon.net/products/2022/03/09/66981/69748243-cde9-4ab7-a8d8-bc551db87056_size520x693_cropCenter.jpg',
    ),
    Product(
      id: 'p6',
      title: 'White Dress',
      description: 'Prepare any meal you want.',
      price: 99.99,
      imageUrl:
          'https://img.simplydresses.com/_img/SDPRODUCTS/2419118/320/ivory-dress-LP-22-MF2961-a.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Black Dress',
      description: 'Prepare any meal you want.',
      price: 89.99,
      imageUrl:
          'https://www.lulus.com/images/product/xlarge/5165771_388012.jpg?w=375&hdpi=1',
    ),
    Product(
      id: 'p8',
      title: 'Blue Dress',
      description: 'Prepare any meal you want.',
      price: 69.99,
      imageUrl:
          'https://media.lucyinthesky.com/data/Aug19_2/781A7236.JPG',
    ),
    Product(
      id: 'p9',
      title: 'Grey Suit',
      description: 'Prepare any meal you want.',
      price: 199.99,
      imageUrl:
          'https://i0.wp.com/oliverwoodes.com/wp-content/uploads/2020/07/London-Super150s-Suit-Graphite-011.jpg?fit=1280%2C1920&ssl=1',
    ),
    Product(
      id: 'p10',
      title: 'Gatsby Suit',
      description: 'Prepare any meal you want.',
      price: 199.99,
      imageUrl:
          'https://www.outfitrs.com/product_images/q/013/gatsby_white_suit__74231_zoom__58894_zoom.jpg',
    ),
  ];

  List<Product> get favoriteItems {
    return _items.where((element) => element.isFavorite).toList();
  }

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
