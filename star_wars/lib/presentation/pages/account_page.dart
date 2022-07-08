import 'package:flutter/material.dart';
import 'package:star_wars/common/color_styles.dart';
import 'package:star_wars/common/text_styles.dart';

class AccountPage extends StatelessWidget {
  static const routeName = '/account-page';

  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: txtMediumTitle
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: clrPrimaryText,
        ),
        iconTheme: const IconThemeData(
          color: clrSecondary
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: clrTertiary,
                radius: 81,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/rizkiramadanil.jpg'),
                  radius: 80,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Rizki Ramadanil',
                style: txtAccountName
              ),
              const SizedBox(height: 5),
              Text(
                'rizkiramadanil000@gmail.com',
                style: txtAccountEmail
              ),
            ],
          ),
        )
      ),
    );
  }
}
