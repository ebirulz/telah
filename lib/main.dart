import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:telah/agents/screens/intro_screen.dart';
import 'package:telah/agents/screens/signup/account_type_screen.dart';
import 'package:telah/agents/screens/signup/account_name_screen.dart';
import 'package:telah/agents/screens/signup/account_email_screen.dart';
import 'package:telah/agents/screens/signup/account_password_screen.dart';
import 'package:telah/agents/screens/signup/account_phone_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telah',
      theme: ThemeData(
        fontFamily: GoogleFonts.raleway().fontFamily,
        backgroundColor: Colors.white
      ),
      initialRoute: '/agent_intro',
      routes: {

        //Agents Screen Route
        '/agent_intro': (context) => const IntroScreen(),
        '/agent_account_type': (context) => const AccountTypeScreen(),
        '/agent_account_name': (context) => const AccountNameScreen(),
        '/agent_account_email': (context) => const AccountEmailScreen(),
        '/agent_account_phone': (context) => const AccountPhoneScreen(),
        '/agent_account_password': (context) => const AccountPwdScreen(),
      },
    );
  }
}

