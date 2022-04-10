import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'agents/screens/account_type_screen.dart';
import 'agents/screens/intro_screen.dart';

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

      },
    );
  }
}

