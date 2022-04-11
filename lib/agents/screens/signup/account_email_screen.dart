import 'package:flutter/material.dart';
import '../../utils/sizemodel.dart';

class AccountEmailScreen extends StatefulWidget {
  const AccountEmailScreen({Key? key}) : super(key: key);

  @override
  _AccountEmailScreenState createState() => _AccountEmailScreenState();
}

class _AccountEmailScreenState extends State<AccountEmailScreen> {
  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
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
                  SizedBox(
                    width: 112,
                    child: Image.asset('assets/images/home.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text('Email Address',
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
                    Text('We won’t spam you, we promise',
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
                      height: 70,
                      child: Center(
                        child: TextField(
                          maxLines: 1,
                          onChanged: (String txt) {},
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          //cursorColor: AppTheme.getTheme().primaryColor,
                          decoration: const InputDecoration(
                            labelText: "Email",
                            errorText: null,
                            enabledBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          ),
                        ),
                      ),
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
                          highlightColor: Colors.redAccent,
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              "Proceed",
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
                ],
              ),
            ),
          ),
        ));
  }
}
