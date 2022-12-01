import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/view/home_view.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color backButton = _colorFromHex("b#F2F2F2");
    Color backArrow = _colorFromHex("b#2F1155");
    Color inboxText = _colorFromHex("b#6E34B8");
    Color textColor = _colorFromHex("b#363853");
    Color activeColorText = _colorFromHex("b#828282");
    return Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
              child: Container(
                width: 44,
                height: 44,
                child: Card(
                  color: backButton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  elevation: 5,
                  child: Icon(
                    size: 16,
                    Icons.arrow_back_ios,
                    color: backArrow,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 32,
                width: 50,
                child: Text(
                  "Inbox",
                  style: TextStyle(
                      letterSpacing: 0.001,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: inboxText),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 335,
              height: 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 8,
                child: Container(
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "29 June 2021, 7:14PM",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: activeColorText),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Congratulation on reaching your savings goals",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Quicksand',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: textColor),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ));
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
