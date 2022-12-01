import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/widget/card_details_widget.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white, body: CardDetailsWidget());
  }
}
