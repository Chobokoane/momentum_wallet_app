import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/widget/home_widget.dart';

class HomeView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, backgroundColor: Colors.white, body: const HomeWidget());
  }
}
