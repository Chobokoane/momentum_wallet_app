import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/widget/profile_widget.dart';

class ProfileView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: const ProfileWidget());
  }
}
