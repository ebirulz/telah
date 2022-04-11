import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:telah/agents/widgets/customwidgets.dart';
import 'package:telah/agents/utils/sizemodel.dart';


class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({Key? key}) : super(key: key);

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  Color box1 = Colors.transparent;
  Color box2 = Colors.transparent;
  Color border1 = Colors.grey.withOpacity(.2);
  Color border2 = Colors.grey.withOpacity(.2);
  Color title1 = Colors.black;
  Color title2 = Colors.black;
  Color selectColor = Colors.blue.withOpacity(.2);
  Color titleSelect = Colors.blueAccent.withOpacity(.7);
  String optionSelected = 'Select';
  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
        body: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Padding(
            padding: EdgeInsets.only(
                top: Sizes.h10,
                left: Sizes.w20,
                right: Sizes.w20,
                bottom: Sizes.w10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //placeholder user profile picture
            Stack(
            children: <Widget>[
            Container(
            margin: EdgeInsets.only(bottom: 20),
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                      "./assets/images/user.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 8,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Icon(
                  MdiIcons.camera,
                  size: 25,
                  color: Colors.blue,
                ),
              ),
            ),
          )
          ],
        ),
                customDivider(height: Sizes.h20),
                Text(
                  'Welcome, John!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Sizes.w25),
                ),
                customDivider(height: Sizes.h15),
                Text(
                  'Link your account to an estate or\ncreate a new estate to start using TELAH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Sizes.w18,
                    height: 1.2,
                  ),
                ),
                customDivider(height: Sizes.h50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          optionSelected = 'existing';
                          title1 = titleSelect;
                          box1 = selectColor;
                          border1 = selectColor;
                          title2 = Colors.black;
                          box2 = Colors.transparent;
                          border2 = Colors.grey.withOpacity(.2);
                        });
                      },
                      child: options('Link to existing', box1, title1, border1),
                    ),
                    customVerticalDivider(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          optionSelected = 'new';
                          title2 = titleSelect;
                          box2 = selectColor;
                          border2 = selectColor;
                          title1 = Colors.black;
                          box1 = Colors.transparent;
                          border1 = Colors.grey.withOpacity(.2);
                        });
                      },
                      child: options('Create new', box2, title2, border2),
                    )
                  ],
                ),
                customDivider(height: Sizes.h120),
                UserWidgets().button(
                    context: context,
                    function: () {},
                    buttonHeight: Sizes.h50,
                    buttonColor: optionSelected == 'Select'
                        ? Colors.blue.withOpacity(.4)
                        : null),
                customDivider(height: Sizes.h20),
                optionSelected == 'Select'
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.blue, fontSize: Sizes.w18),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  proceed() {
    if (optionSelected == 'Select') {
// tell user to select
    } else {
      // continue
    }
  }

  options(String title, Color boxColor, Color titleColor, Color borderColor) {
    return Container(
      height: Sizes.h150,
      width: Sizes.w150,
      decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.w10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/option.png',
              height: Sizes.h60,
            ),
          ),
          customDivider(height: Sizes.h15),
          Text(title,
              style: TextStyle(
                  color: titleColor,
                  fontSize: Sizes.w15,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
