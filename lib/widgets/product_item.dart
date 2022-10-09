import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/routes/route.dart';

class ProductItem extends StatelessWidget {
  // final Product valid;

  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),  
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              product.toggleFavoriteStatus();
            },
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
            },
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        child: GestureDetector(
          onTap: (){
           Navigator.of(context).pushNamed(Routes.productDetail, arguments: product.title);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
