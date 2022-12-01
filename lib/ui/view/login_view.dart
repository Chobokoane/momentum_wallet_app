import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/widget/login_widget.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: const LoginWidget()
      );
  }
}
