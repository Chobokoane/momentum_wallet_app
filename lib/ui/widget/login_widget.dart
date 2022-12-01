import 'package:flutter/material.dart';
import 'package:momentum_assessment/ui/view/home_view.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = _colorFromHex("b#2F1155");
    Color personIcon = _colorFromHex("b#9038FF");
    Color buttonColor = _colorFromHex("b#6E34B8");
    return Align(
      alignment: Alignment.center,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
            width: 162,
            height: 164,
            child: Image.asset('assets/images/momentum.jpg')),
        const SizedBox(height: 15),
        SizedBox(
            width: 310,
            height: 36,
            child: Text(
              "Welcome back!",
              style: TextStyle(
                  letterSpacing: 0.001,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  //height: 36,
                  color: textColor),
              textAlign: TextAlign.center,
            )),
        const SizedBox(
          height: 35,
        ),
        SizedBox(
          height: 54,
          width: 310,
          child: TextField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline,
                color: personIcon,
              ),
              border: const OutlineInputBorder(),
              labelText: 'Username',
            ),
          ),
        ),
        SizedBox(
          height: 54,
          width: 310,
          child: TextField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Container(
                  margin: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: personIcon,
                  )),
                  child: Icon(
                    Icons.key_sharp,
                    color: personIcon,
                  ),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: Icon(
                  Icons.visibility_off_rounded,
                  color: personIcon,
                )),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Container(
          height: 63,
          width: 193,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(
                color: buttonColor,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: buttonColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            },
            child: const SizedBox(
                width: 48,
                height: 23,
                child: Text(
                  "Login",
                  style: TextStyle(
                      letterSpacing: 0.001,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
        )
      ]),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
