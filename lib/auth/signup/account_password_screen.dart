import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../../utils/sizemodel.dart';
import 'account_otp_screen.dart';

class AccountPwdScreen extends StatefulWidget {
  const AccountPwdScreen({Key? key}) : super(key: key);

  @override
  _AccountPwdScreenState createState() => _AccountPwdScreenState();
}

class _AccountPwdScreenState extends State<AccountPwdScreen> {

  bool hideText = true;
  IconData visibility = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    final node = FocusScope.of(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Center(
                        child: FAProgressBar(
                          currentValue: 95,
                          backgroundColor: const Color(0xffE3E6E8),
                          progressColor: Colors.blue,
                          size: 9,
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 60,
                    child: Image.asset('assets/images/key.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text('Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                        )),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    //width: 250,
                    child:
                    Text('Set your password, make it difficult to guess',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SizedBox(
                      height: Sizes.h70,
                      child: TextFormField(
                          validator: (value) {
                            if (value != null && value.trim().isEmpty) {
                              return 'please enter password';
                            }

                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () => node.unfocus(),
                          obscureText: hideText,
                          obscuringCharacter: '●',
                          style: TextStyle(fontSize: Sizes.w17),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  if (hideText) {
                                    setState(() {
                                      hideText = false;
                                      visibility = Icons.visibility_off;
                                    });
                                  } else {
                                    setState(() {
                                      hideText = true;
                                      visibility = Icons.visibility;
                                    });
                                  }
                                },
                                icon: Icon(
                                  visibility,
                                  color: Colors.black54,
                                )),
                            labelText: 'Password',
                            labelStyle: const TextStyle(fontSize: 18,),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SizedBox(
                      height: Sizes.h70,
                      child: TextFormField(
                          validator: (value) {
                            if (value != null && value.trim().isEmpty) {
                              return 'please enter password';
                            }

                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () => node.unfocus(),
                          obscureText: hideText,
                          obscuringCharacter: '●',
                          style: TextStyle(fontSize: Sizes.w17),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  if (hideText) {
                                    setState(() {
                                      hideText = false;
                                      visibility = Icons.visibility_off;
                                    });
                                  } else {
                                    setState(() {
                                      hideText = true;
                                      visibility = Icons.visibility;
                                    });
                                  }
                                },
                                icon: Icon(
                                  visibility,
                                  color: Colors.black54,
                                )),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(fontSize: 18,),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(Sizes.w10))),
                          )),
                    ),
                  ),

                  const SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, bottom: 8, top: 8),
                    child: Container(
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          highlightColor: Colors.blue.shade400,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const AccountOTPScreen()));
                          },
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
