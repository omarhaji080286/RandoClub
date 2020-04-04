import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randoclub/blocs/register_bloc/register_bloc_delegate.dart';
import 'package:randoclub/database/handle_initial_load.dart';
import 'package:randoclub/screens/loading.dart';
import 'package:randoclub/util/basic_theme.dart';

void main() {
  BlocSupervisor.delegate = RegisterBlocDelegate();
  runApp(new RandoClub());
}

class RandoClub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   HandleInitialLoad().execute();

    return  MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => Loading(),
        },
      theme: basicTheme(),
    );
  }

}
