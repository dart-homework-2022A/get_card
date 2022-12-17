import 'package:flutter/material.dart';
import 'package:get_card/models/credit_card.dart';
import 'package:get_card/services/credit_card.dart';

import '../widgets/card.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    print("Mywidget buildfunction");
    return Scaffold(
      body: FutureBuilder(
        future: getCard(),
        builder: (context, AsyncSnapshot<CreditCard> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else if (snapshot.hasError) {
            return Center(
                child: IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(Icons.refresh)));
          } else {
            return CreditCardWidget(card: snapshot.data!);
          }
        },
      ),
    );
  }
}
