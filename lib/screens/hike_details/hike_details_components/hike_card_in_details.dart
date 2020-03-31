import 'package:flutter/material.dart';
import 'package:randoclub/database/handle_initial_load.dart';
import 'package:randoclub/database/models/expanded_hike.dart';
import 'package:randoclub/screens/hike_details/hike_details.dart';
import 'package:randoclub/util/TimeHandler.dart';

class HikeCardInDetails extends StatefulWidget {
  const HikeCardInDetails({
    Key key,
    @required this.expHike,
    this.isHikeDetailsLinkActive,
  }) : super(key: key);

  final ExpandedHike expHike;
  final bool isHikeDetailsLinkActive;

  @override
  _HikeCardInDetailsState createState() => _HikeCardInDetailsState();
}

class _HikeCardInDetailsState extends State<HikeCardInDetails> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      elevation: 5.0,
      child: GestureDetector(
        onTap: _hikeDetails,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _clubLogoClubNameImageHike(),
            _startDateHikeDescButtons(),
          ],
        ),
      ),
    );
  }



  //club logo, club name, hike image
  Widget _clubLogoClubNameImageHike() {
    return Container(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          _clubLogo(),
          new Positioned(
            left: 2.0,
            top: 60.0,
            child: _clubName(),
          ),
          new Positioned(
            left: 160.0,
            top: 10.0,
            child: _hikeImage(),
          ),
        ],
      ),
    );
  }

  _hikeImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0)),
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: widget.expHike.hike.imageUrl,
        height: 60,
        width: 140,
        fadeInDuration: Duration(seconds: 1),
        fadeInCurve: Curves.linear,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _startDateHikeDescButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _startDay(),
        _hikeDescAndButtons(),
      ],
    );
  }

  _clubLogo() {
    return GestureDetector(
      onTap: _clubDetails,
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(
                "http://192.168.43.211/rando_club_web/uploaded_imgs/clubs_logos/1_Randopedia.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          border: new Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  _clubName() {
    return GestureDetector(
      onTap: _clubDetails,
      child: Text(widget.expHike.club.clubName),
    );
  }

  _hikeDescAndButtons() {
    return Flexible(
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 5.0, 30.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _hikeDesc(),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _hikeDesc() {
    return Text(
      widget.expHike.hike.description,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.only(right: 10.0),
          icon: Icon(Icons.star_border),
          onPressed: () {},
        ),
        RaisedButton(
            onPressed: () {},
            child: Text(
              'Participer',
              style: TextStyle(
                color: Colors.white,
              ),
            ))
      ],
    );
  }

  Widget _startDay() {
    TimeHandler timeHandler = TimeHandler(widget.expHike.hike.startDay);
    String displayedDate =
        timeHandler.getDay() + ' ' + timeHandler.getMonthInLetter();
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
      height: 80.0,
      width: 60.0,
      child: Text(
        displayedDate,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
      ),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        border: new Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
    );
  }

  void _hikeDetails() {
    if (widget.isHikeDetailsLinkActive) {
      HandleInitialLoad().execute();
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => new HikeDetails(expHike: widget.expHike)));
    }
  }

  void _clubDetails() {
    //TODO
    print("HikeCard - club details");
  }
}
