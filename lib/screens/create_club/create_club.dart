import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/create_club_bloc/create_club_bloc.dart';
import 'package:randoclub/blocs/create_club_bloc/create_club_event.dart';
import 'package:randoclub/database/models/create_club_form.dart';
import 'package:randoclub/screens/create_club/create_club_components/club_logo_notification.dart';
import 'package:randoclub/screens/create_club/create_club_components/club_logo_picker.dart';

class CreateClub extends StatefulWidget {
  @override
  _CreateClubState createState() => _CreateClubState();
}

class _CreateClubState extends State<CreateClub> {
  CreateClubBloc _createClubBloc;

  String _clubName;
  String _contactPhone;
  String _contactEmail;
  File _logo;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _createClubBloc = CreateClubBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateClubBloc>(
      create: (context) => _createClubBloc,
      child: Scaffold(
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
                NotificationListener(
                  onNotification: (ClubLogoNotification notification) {
                    setState(() {
                      _logo = notification.logo;
                    });
                    return true;
                  },
                  child: ClubLogoPicker(),
                ),
                SizedBox(height: 50.0),
                _buildSubmitButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClubName() {
    return TextFormField(
      initialValue: 'randoclub11',
      decoration: InputDecoration(
        labelText: 'Nom du club',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Nom du club requis';
        }
        return null;
      },
      onSaved: (String value) {
        _clubName = value;
      },
    );
  }

  Widget _buildContactPhone() {
    return TextFormField(
      initialValue: '0123456789',
      decoration: InputDecoration(
        labelText: 'Numéro de téléphone',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Téléphone requis';
        }
        if (!RegExp(r'(^[0-9]{10}$)').hasMatch(value)) {
          return 'Téléphone au format 0123456789';
        }

        return null;
      },
      onSaved: (String value) {
        _contactPhone = value;
      },
    );
  }

  Widget _buildContactEmail() {
    return TextFormField(
      initialValue: 'aze@email.com',
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email requis';
        }
        if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Email non valide';
        }
        return null;
      },
      onSaved: (String value) {
        _contactEmail = value;
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Valider',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        if (!_formKey.currentState.validate()) {
          return;
        }
        _formKey.currentState.save();

        createClub();
      },
    );
  }

  void createClub() {

    CreateClubForm createClubForm = CreateClubForm(
      clubName: _clubName,
      contactPhone: _contactPhone,
      contactEmail: _contactEmail,
      logo : _logo,
    );

    _createClubBloc.add(
        CreateClubEvent.createClubFormSubmitted(createClubForm));
  }
}
