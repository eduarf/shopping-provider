import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key, required this.cart}) : super(key: key);

  final CartItem cart;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<Cart>(context, listen: false);
    return Dismissible(
      key: Key(cart.id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: const Icon(Icons.delete, color: Colors.white,size: 40,),
      ),
      onDismissed: (_) {
       cartProvider.removeItem(cart.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: FittedBox(
                    child: Text(
                  cart.price.toString(),
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                )),
              ),
            ),
            title: Text(cart.title),
            subtitle: Text('Total : ${cart.price * cart.quantity}'),
            trailing: Text('${cart.quantity}x'),
          ),
        ),
      ),
    );
  }
}
