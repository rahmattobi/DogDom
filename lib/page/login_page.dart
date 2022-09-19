import 'package:dogdom/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

List<String> list = <String>[
  '+62',
  '+82',
];

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    Widget buttonCaptcha() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        height: 60,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: TextButton.styleFrom(
            backgroundColor: redColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Text(
            'Get Captcha',
            style: whiteTextStyle.copyWith(
              fontSize: 17,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget phone() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: whiteColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(
                Icons.arrow_drop_down,
                color: whiteColor,
              ),
              dropdownColor: primaryColor.withOpacity(0.5),
              elevation: 16,
              style: whiteTextStyle.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: whiteTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: medium,
                ),
                decoration: InputDecoration.collapsed(
                  hintText: '',
                  hintStyle: whiteTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/logo2.png'),
            const SizedBox(
              height: 40,
            ),
            phone(),
            const SizedBox(
              height: 16,
            ),
            buttonCaptcha(),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Password to Login',
                style: whiteTextStyle,
              ),
            ),
            const Spacer(),
            Text(
              'By signing in, you agree to the User Agreement \n and Privacy Terms.',
              style: whiteTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
