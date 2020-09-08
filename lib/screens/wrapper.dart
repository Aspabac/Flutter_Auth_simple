import 'package:fire_auth_test/models/user.dart';
import 'package:fire_auth_test/screens/authenticate/authenticate.dart';
import 'package:fire_auth_test/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Reuser>(context);
    print(user);

//    return either Home or Authenticate widget
    return Authenticate();
  }
}
