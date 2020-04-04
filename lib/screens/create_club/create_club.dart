import 'package:flutter/material.dart';
import 'package:randoclub/screens/create_club/create_club_components/club_logo_picker.dart';

class CreateClub extends StatefulWidget {
  @override
  _CreateClubState createState() => _CreateClubState();
}

class _CreateClubState extends State<CreateClub> {
  String _clubName;
  String _contactPhone;
  String _contactEmail;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Données de votre club'),
      ),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildClubName(),
              _buildContactPhone(),
              _buildContactEmail(),
              SizedBox(height: 30.0),
              ClubLogoPicker(),
              SizedBox(height: 50.0),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClubName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nom du club',
      ),
      validator: (String value){
        if (value.isEmpty){
          return 'Nom du club requis';
        }
        return null;
      },
      onSaved: (String value){
        _clubName = value;
      },
    );
  }

  Widget _buildContactPhone() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Numéro de téléphone',
      ),
      validator: (String value){
        if (value.isEmpty){
          return 'Téléphone requis';
        }
        if (!RegExp(r'(^[0-9]{10}$)').hasMatch(value)){
          return 'Téléphone au format 0123456789';
        }

        return null;
      },
      onSaved: (String value){
        _contactPhone = value;
      },
    );
  }

  Widget _buildContactEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      validator: (String value){
        if (value.isEmpty){
          return 'Email requis';
        }
        if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)){
          return 'Email non valide';
        }
        return null;
      },
      onSaved: (String value){
        _contactEmail = value;
      },
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      child: Text(
        'Valider',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        if (!_formKey.currentState.validate()){
          return;
        }
        _formKey.currentState.save();

        createClub();

      },
    );
  }

  void createClub(){
    print("CreateClub - creating club");
  }

}
