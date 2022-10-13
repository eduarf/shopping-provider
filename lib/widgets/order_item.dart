import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class OrderItemWidget extends StatefulWidget {
  final orderData;
  const OrderItemWidget({Key? key, required this.orderData}) : super(key: key);

  @override
  State<OrderItemWidget> createState() => _OrderItemWidgetState();
}

class _OrderItemWidgetState extends State<OrderItemWidget> {
  bool _expanded = false;

  void isTrue() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('\$${widget.orderData.amount.toString()}'),
            subtitle: Text(formatDate(widget.orderData.dateTime,
                [yyyy, '-', mm, '-', dd, ' ', hh, ':', nn, ' [', am, ']'])),
            trailing: IconButton(
              onPressed: () {
                isTrue();
              },
              icon: Icon(!_expanded ? Icons.expand_more : Icons.expand_less),
            ),
          ),
          if (_expanded)
            Container(
              height: min(widget.orderData.products.length * 20.0 + 100, 180),
              child: ListView.builder(
                itemCount: widget.orderData.products.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(widget.orderData.products[index].title),
                    ],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
