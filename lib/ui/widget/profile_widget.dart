import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/view/home_view.dart';
import 'package:momentum_assessment/ui/view/login_view.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color backButton = _colorFromHex("b#F2F2F2");
    Color backArrow = _colorFromHex("b#2F1155");
    Color inboxText = _colorFromHex("b#6E34B8");
    Color walletTextColor = _colorFromHex("b#2F1155");
    Color personIcon = _colorFromHex("b#9038FF");
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          child: Text(
            "Profile",
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
        const SizedBox(
          height: 35,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/profile.jpg"), // pi,cked file
                    fit: BoxFit.fill)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Thomas Chobokoane",
            style: TextStyle(
                letterSpacing: 0.001,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: walletTextColor),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 75,
        ),
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 72,
                height: 72,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  elevation: 5,
                  child: Icon(
                    Icons.key_sharp,
                    color: personIcon,
                  ),
                ),
              ),
            )),
        const SizedBox(
          height: 15,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              "Log Out",
              style: TextStyle(
                  letterSpacing: 0.005,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: personIcon),
              textAlign: TextAlign.center,
            ))
      ]),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
