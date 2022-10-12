import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text('\$${ordersData.orders[index].amount.toString()}'),
                subtitle: Text(formatDate(ordersData.orders[index].dateTime,
                    [yyyy, '-', mm, '-', dd, ' ', hh, ':', nn, ' [', am, ']'])),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_downward_rounded),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
