import 'package:fire_auth_test/models/brew.dart';
import 'package:fire_auth_test/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fire_auth_test/services/database.dart';
import 'package:provider/provider.dart';
import 'package:fire_auth_test/screens/home/brew_list.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('Warf'),
          backgroundColor: Colors.blueGrey[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),

      ),
    );
  }
}
