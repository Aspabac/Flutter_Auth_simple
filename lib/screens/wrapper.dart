import 'package:fire_auth_test/models/user.dart';
import 'package:fire_auth_test/screens/authenticate/authenticate.dart';
import 'package:fire_auth_test/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Reuser>(context);


//    return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    }else {
      return Home();
    }
  }
}
