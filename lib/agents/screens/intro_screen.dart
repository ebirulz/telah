import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:telah/agents/screens/login/account_login_screen.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(height: 80,),
              Center(
                child: SizedBox(
                  width: 112,
                  child: Image.asset('assets/images/welcome_logo.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Create an account', style: boldTextStyle(size: 32)),
              const SizedBox(height: 10),
              const Expanded(
                flex: 1,
                child: SizedBox(
                    width: 250,
                    child: Text(
                      'Let’s help you set up your account quickly and easily',
                      textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                        )
                    ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  height: 250,
                    child: Image.asset('assets/images/house.png'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 48, right: 48, bottom: 8, top: 8),
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),

                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      highlightColor: Colors.redAccent,
                      onTap: () => Navigator.pushNamed(context, '/agent_account_type'),
                      child: const Center(
                        child: Text(
                          "Proceed to Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    bottom: 24.0 + MediaQuery.of(context).padding.bottom,
                    top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Already have account?.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const AccountLoginScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
