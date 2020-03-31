import 'package:flutter/material.dart';
import 'package:randoclub/util/constants.dart';

class EquipmentWidget extends StatelessWidget {
  final String equipmentToDisplay;

  const EquipmentWidget({Key key, this.equipmentToDisplay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 20.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image:
                  '${Constants.WEB_ADDRESS_ROOT}/app_imgs/icons/equipment.png',
              fadeInDuration: Duration(milliseconds: 500),
              fadeInCurve: Curves.linear,
              fit: BoxFit.fill,
              height: 60.0,
              width: 60.0,
            ),
            Text('Equipement'),
          ],
        ),
        SizedBox(width: 30.0),
        Text(equipmentToDisplay),
      ],
    );
  }
}
