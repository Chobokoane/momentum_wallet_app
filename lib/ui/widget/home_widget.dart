import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/view/card_details_view.dart';
import 'package:momentum_assessment/ui/view/inbox_view.dart';
import 'package:momentum_assessment/ui/view/profile_view.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color walletTextColor = _colorFromHex("b#2F1155");
    Color textColor = _colorFromHex("b#FFFFFF");
    Color activeColorText = _colorFromHex("b#828282");
    Color linkedCardText = _colorFromHex("b#BDBDBD");
    Color containerColor = _colorFromHex("b#5B259F");
    Color arrowColor = _colorFromHex("b#D71CDB");
    Color circleContainer = _colorFromHex("b#9038FF");
    Color personIcon = _colorFromHex("b#9038FF");
    Color profileText = _colorFromHex("b#4F4F4F");
    Color transactionText = _colorFromHex("b#2F1155");
    Color amountText = _colorFromHex("b#363853");

    return SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 18, left: 30, right: 30),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 80,
                      height: 36,
                      child: Text(
                        "Wallet",
                        style: TextStyle(
                            letterSpacing: 0.001,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: walletTextColor),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                        width: 47,
                        height: 24,
                        child: Text(
                          "Active",
                          style: TextStyle(
                              letterSpacing: 0.005,
                              fontFamily: 'Quicksand',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: activeColorText),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              ),
              const Spacer(),
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/profile.jpg"), // pi,cked file
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: (){
             Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CardDetailsView()),
          );
          },
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
                        width: 115,
                        height: 24,
                        child: Text(
                          "Linked to card",
                          style: TextStyle(
                              letterSpacing: 0.005,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: linkedCardText),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              )),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileView()),
                    );
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      elevation: 5,
                      child: Icon(
                        Icons.person_outline,
                        color: personIcon,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: 40,
                    height: 20,
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          letterSpacing: 0.001,
                          fontFamily: 'Quicksand',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: profileText),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InboxView()),
                    );
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      elevation: 5,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: personIcon,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: 40,
                    height: 20,
                    child: Text(
                      "Inbox",
                      style: TextStyle(
                          letterSpacing: 0.001,
                          fontFamily: 'Quicksand',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: profileText),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            width: 189,
            height: 32,
            child: Text(
              "Recent Transactions",
              style: TextStyle(
                  letterSpacing: 0.001,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: transactionText),
              textAlign: TextAlign.center,
            )),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/profile.jpg"), // pi,cked file
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 50,
                      height: 24,
                      child: Text(
                        "Netflix",
                        style: TextStyle(
                            letterSpacing: 0.001,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: walletTextColor),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Monthly subscription",
                      style: TextStyle(
                          letterSpacing: 0.001,
                          fontFamily: 'Quicksand',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: activeColorText),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                  width: 68,
                  height: 19,
                  child: Text(
                    "R 200.00",
                    style: TextStyle(
                        letterSpacing: 0.001,
                        fontFamily: 'Rubik',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: amountText),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ]),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
