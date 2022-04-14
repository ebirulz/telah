import 'package:flutter/material.dart';
import 'package:telah/utils/sizemodel.dart';

import '../../widgets/customwidgets.dart';

class AccountOTPScreen extends StatefulWidget {
  const AccountOTPScreen({Key? key}) : super(key: key);

  @override
  _AccountOTPScreenState createState() => _AccountOTPScreenState();
}

class _AccountOTPScreenState extends State<AccountOTPScreen> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }
  @override
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
            children: [
              SizedBox(
                width: 60,
                child: Image.asset('assets/images/verify.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 250,
                child: Text('Verification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    )),
              ),
          SizedBox(
          width: double.infinity,
          child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text("We’ve sent a verification code to johndoe@mail.com", textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  )),
              //buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      autofocus: true,
                      //obscureText: true,
                      style: const TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w800,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                        enabledBorder: const OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(Sizes.w10))),
                      ),
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin2FocusNode,
                      //obscureText: true,
                      style: const TextStyle(
                          fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                        enabledBorder: const OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(Sizes.w10))),
                      ),
                      onChanged: (value) => nextField(value, pin3FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin3FocusNode,
                      //obscureText: true,
                      style: const TextStyle(
                          fontSize: 24,
                        fontWeight: FontWeight.w800,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                        enabledBorder: const OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(Sizes.w10))),
                      ),
                      onChanged: (value) => nextField(value, pin4FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin4FocusNode,
                      //obscureText: true,
                      style: const TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w800,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                        enabledBorder: const OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(Sizes.w10))),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          pin4FocusNode!.unfocus();
                          // Then you need to check is the code is correct or not
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn’t receive a mail?",
                      style: TextStyle(
                          fontSize: Sizes.w15)),
                  customVerticalDivider(),

                  GestureDetector(
                    onTap: () {
                      // OTP code resend
                    },
                    child: const Text(
                      "Resend Code",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   GestureDetector(
                    onTap: () {
                      // OTP code resend
                    },
                    child: const Text(
                      "Change email", style: TextStyle(
                        color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w800, )
                    ),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
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
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const AccountEmailScreen()));*/
                      },
                      child: const Center(
                        child: Text(
                          "Verify",
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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              /*Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // OTP code resend
                    },
                    child: const Text(
                        "Open mail", style: TextStyle(
                      color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w800, )
                    ),
                  )
                ],
              ),*/
              //SizedBox(height: SizeConfig.screenHeight * 0.1),
            ],
          ),
        ),
      ),
    )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
