import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/widget/inbox_widget.dart';

class InboxView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  InboxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: const InboxWidget());
  }
}
