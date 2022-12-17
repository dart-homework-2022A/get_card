import 'package:flutter/material.dart';
import 'package:get_card/models/credit_card.dart';

class CreditCardWidget extends StatelessWidget {
  final CreditCard card;
  CreditCardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(card.type.length);
    print(card.type);
    String con() {
      if (card.type == 'Discover') {
        return 'img/discover.png';
      } else if (card.type == 'Discovery') {
        return 'img/discovery.png';
      } else if (card.type == 'JCB') {
        return 'img/jcb.jpg';
      } else if (card.type == 'Mastercard') {
        return 'img/mastercard.png';
      } else if (card.type == 'AmericanExpress') {
        return 'img/amx.jpg';
      } else {
        return 'img/Visa.png';
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 220,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 92, 116),
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        card.type,
                        style: TextStyle(fontSize: 18),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 250, top: 15),
                    child: SizedBox(
                      height: 60,
                      width: 80,
                      child: Image.asset(con()),
                    ),
                  ),
                  Row(children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 90, left: 25),
                        child: Image.asset('img/sim.png',color: Colors.yellow,)),
                    const Padding(
                        padding: EdgeInsets.only(top: 90, left: 10),
                        child:
                            Icon(Icons.rss_feed, size: 25, color: Colors.white))
                  ]),
                  Padding(
                      padding: const EdgeInsets.only(top: 150, left: 20),
                      child: Text(card.cardNumber.toString(),
                          style: const TextStyle(fontSize: 22))),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 20),
                    child: Text(
                      card.fullName,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 250),
                    child: Row(
                      children: [
                        Text(
                          '${'cvv/'}${card.cvv}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
