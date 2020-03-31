import 'package:flutter/material.dart';
import 'package:randoclub/database/models/pricing_item.dart';

class Pricing extends StatelessWidget {

  final List<PricingItem> pricingItems;

  const Pricing({Key key, this.pricingItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pricing = '';
    int i = 0;
    pricingItems.forEach((element) {
      i++;
      pricing =
      '$pricing - ${element.price} pour les ${element.priceCategoryName}';
      if (pricingItems.length != i) {
        pricing = '$pricing\n';
      }
    });
    return Text(
      pricing,
      style: TextStyle(
        fontSize: 14,
      ),
    );
  }
}
