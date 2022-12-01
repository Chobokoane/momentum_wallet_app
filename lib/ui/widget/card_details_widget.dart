import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/view/home_view.dart';

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color backButton = _colorFromHex("b#F2F2F2");
    Color backArrow = _colorFromHex("b#2F1155");
    Color myCardText = _colorFromHex("b#333333");
    Color containerColor = _colorFromHex("b#5B259F");
    Color textColor = _colorFromHex("b#FFFFFF");
    Color arrowColor = _colorFromHex("b#D71CDB");
    Color nameText = _colorFromHex("b#BDBDBD");
    Color blackColor = _colorFromHex("b#000000");
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(15),
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
        child: Text(
          "My Card",
          style: TextStyle(
              letterSpacing: 0.001,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: myCardText),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 35,
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
            width: 335,
            height: 140,
            decoration: BoxDecoration(
                color: containerColor,
                border: Border.all(
                  color: containerColor,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 70,
                              height: 36,
                              child: Text(
                                "Balance",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: textColor),
                                textAlign: TextAlign.center,
                              )),
                          Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 36,
                                  child: Text(
                                    "R 400.13",
                                    style: TextStyle(
                                        letterSpacing: 0.001,
                                        fontFamily: 'Quicksand',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: textColor),
                                    textAlign: TextAlign.center,
                                  )),
                              const SizedBox(
                                width: 110,
                              ),
                              SizedBox(
                                width: 100,
                                height: 32,
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     color: circleContainer,
                                //   ),
                                //   shape: BoxShape.circle,
                                // ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: arrowColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 60,
                      height: 19,
                      child: Text(
                        "Visa",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: textColor),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            )),
      ),
      const SizedBox(
        height: 35,
      ),
      Container(
        margin: const EdgeInsets.only(left:35),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 24,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: nameText),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  child: SizedBox(
                      width: 127,
                      height: 24,
                      child: Text(
                        "Thomas Chobokoane",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Quicksand',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 24,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: nameText),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  child: SizedBox(
                      width: 127,
                      height: 24,
                      child: Text(
                        "Thomas Chobokoane",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Quicksand',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
             const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 24,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: nameText),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  child: SizedBox(
                      width: 127,
                      height: 24,
                      child: Text(
                        "Thomas Chobokoane",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Quicksand',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
             const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 24,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: nameText),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  child: SizedBox(
                      width: 127,
                      height: 24,
                      child: Text(
                        "Thomas Chobokoane",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Quicksand',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
             const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 50,
                    height: 24,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                          letterSpacing: 0.005,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: nameText),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  child: SizedBox(
                      width: 127,
                      height: 24,
                      child: Text(
                        "Thomas Chobokoane",
                        style: TextStyle(
                            letterSpacing: 0.005,
                            fontFamily: 'Quicksand',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ],
        ),
      )
    ]);
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
