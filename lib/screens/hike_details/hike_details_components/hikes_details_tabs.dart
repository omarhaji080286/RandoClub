import 'package:flutter/material.dart';
import 'package:randoclub/database/models/expanded_hike.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/general/general.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/good_to_know/good_to_know.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/price/price_tab.dart';
import 'package:randoclub/screens/hike_details/hike_details_components/program/program.dart';

class HikeDetailsTabs extends StatefulWidget {

  final ExpandedHike expHike;

  const HikeDetailsTabs({Key key, this.expHike}) : super(key: key);

  @override
  _HikeDetailsTabsState createState() => _HikeDetailsTabsState();
}

class _HikeDetailsTabsState extends State<HikeDetailsTabs> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: TabBar(
            isScrollable: true,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 8,
            tabs: <Widget>[
              generalTab(),
              programTab(),
              priceTab(),
              goodToKnowTab(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            General(expHike: widget.expHike),
            Program(hikeId : widget.expHike.hike.hikeId),
            PriceTab(hike : widget.expHike.hike),
            GoodToKnow(hike : widget.expHike.hike),
          ]
        ),
      ),
    );
  }

  Tab generalTab() {
    return Tab(
      child: Text(
        'Général',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Tab programTab() {
    return Tab(
      child: Text(
        'Programme',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Tab priceTab() {
    return Tab(
      child: Text(
        'Tarif',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Tab goodToKnowTab() {
    return Tab(
      child: Text(
        'Infos pratique',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }




}
