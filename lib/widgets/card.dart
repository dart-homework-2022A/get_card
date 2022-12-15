import 'package:flutter/material.dart';
import 'package:get_card/models/credit_card.dart';

class MyWidget extends StatelessWidget {
  final CreditCard card;
  const MyWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(card.type),
    );
  }
}
