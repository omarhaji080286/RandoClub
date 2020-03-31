import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:randoclub/database/models/pricing_item.dart';
import 'package:randoclub/database/randoclub_database.dart';

import 'price_components/in_price.dart';
import 'price_components/pricing.dart';

class PriceTab extends StatefulWidget {
  final Hike hike;

  const PriceTab({Key key, this.hike}) : super(key: key);

  @override
  _PriceTabState createState() => _PriceTabState();
}

class _PriceTabState extends State<PriceTab> {
  PriceDao priceDao;

  @override
  void initState() {
    super.initState();
    final RandoClubDataBase db = RandoClubDataBase.getInstance();
    this.priceDao = PriceDao(db);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.topLeft,
          child: StreamBuilder<Object>(
            stream: priceDao.watchPriceComponents(widget.hike.priceId),
            builder: (BuildContext context, AsyncSnapshot<Object> snapshot) {
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else {
                List<PricingItem> pricingItems = snapshot.data;
                switch (snapshot.connectionState) {
                  case ConnectionState.active:
                    return Pricing(pricingItems: pricingItems);
                  default:
                    return waiting();
                }
              }
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.topLeft,
          child: StreamBuilder<Object>(
            stream: priceDao.watchPrice(widget.hike.priceId),
            builder: (BuildContext context, AsyncSnapshot<Object> snapshot) {
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else {
                Price price = snapshot.data;
                switch (snapshot.connectionState) {
                  case ConnectionState.active:
                    return InPrice(price: price);
                  default:
                    return waiting();
                }
              }
            },
          ),
        ),
      ],
    );
  }

  Widget waiting() {
    return Center(child: SpinKitChasingDots(color: Colors.green, size: 100.0));
  }
}


