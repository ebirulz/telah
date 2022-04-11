import 'package:flutter/material.dart';
import 'package:telah/agents/utils/sizemodel.dart';
import 'package:telah/agents/screens/signup/account_name_screen.dart';

class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({Key? key}) : super(key: key);

  @override
  _AccountTypeScreenState createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  Color box1 = Colors.transparent;
  Color box2 = Colors.transparent;
  Color box3 = Colors.transparent;
  Color title1 = Colors.black;
  Color title2 = Colors.black;
  Color title3 = Colors.black;
  Color border1 = Colors.grey.withOpacity(.2);
  Color border2 = Colors.grey.withOpacity(.2);
  Color border3 = Colors.grey.withOpacity(.2);
  Color selectColor = Colors.blue.withOpacity(.2);
  Color titleSelect = Colors.blueAccent.withOpacity(.7);
  String estate =
      'Perfect for managing several properties located within the same area';
  String landlord =
      'Perfect for managing several properties located within the same area';
  String agent =
      'Perfect for managing several properties located within the same area';
  String optionSelected = 'Select';

  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
                top: Sizes.h40,
                left: Sizes.w10,
                right: Sizes.w10,
                bottom: Sizes.w10),
            child: Column(
              children: [
                Center(
                    child: Text(
                  'How are you planning\n to use TELAH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Sizes.w30),
                )),
                Divider(
                  height: Sizes.h15,
                  color: Colors.transparent,
                ),
                const Text(
                  'This will help us streamline your setup experience',
                  style: TextStyle(color: Colors.grey),
                ),
                Divider(
                  height: Sizes.h40,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      optionSelected = 'estates';
                      title1 = titleSelect;
                      box1 = selectColor;
                      border1 = selectColor;
                      title2 = Colors.black;
                      box2 = Colors.transparent;
                      border2 = Colors.grey.withOpacity(.2);
                      title3 = Colors.black;
                      box3 = Colors.transparent;
                      border3 = Colors.grey.withOpacity(.2);
                    });
                  },
                  child: options('For Estates', estate,
                      'assets/images/option.png', title1, box1, border1),
                ),
                Divider(
                  height: Sizes.h15,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      optionSelected = 'landlords';
                      title2 = titleSelect;
                      box2 = selectColor;
                      border2 = selectColor;
                      title1 = Colors.black;
                      box1 = Colors.transparent;
                      border1 = Colors.grey.withOpacity(.2);
                      title3 = Colors.black;
                      box3 = Colors.transparent;
                      border3 = Colors.grey.withOpacity(.2);
                    });
                  },
                  child: options('For Landlords', landlord,
                      'assets/images/option.png', title2, box2, border2),
                ),
                Divider(
                  height: Sizes.h15,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      optionSelected = 'agents';
                      title3 = titleSelect;
                      box3 = selectColor;
                      border3 = selectColor;
                      title1 = Colors.black;
                      box1 = Colors.transparent;
                      border1 = Colors.grey.withOpacity(.2);
                      title2 = Colors.black;
                      box2 = Colors.transparent;
                      border2 = Colors.grey.withOpacity(.2);
                    });
                  },
                  child: options('For Agents', agent,
                      'assets/images/option.png', title3, box3, border3),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(),
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
                        //highlightColor: Colors.redAccent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const AccountNameScreen()));
                        },
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
      ),
    );
  }

  Widget options(String title, String summary, String imagelink,
      Color titleColor, Color boxColor, Color borderColor) {
    return Padding(
      padding: EdgeInsets.only(bottom: Sizes.h8),
      child: SizedBox(
        height: Sizes.h90,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            left: Sizes.w20,
          ),
          child: Row(
            children: [
              Container(
                height: Sizes.h120,
                width: Sizes.w100,
                decoration: BoxDecoration(
                    color: boxColor,
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(Sizes.w10))),
                child: Center(
                  child: Image.asset(
                    imagelink,
                    height: Sizes.h60,
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.transparent,
                width: Sizes.w20,
              ),
              SizedBox(
                width: Sizes.w200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            color: titleColor,
                            fontSize: Sizes.w20,
                            fontWeight: FontWeight.bold)),
                    Divider(
                      color: Colors.transparent,
                      height: Sizes.h10,
                    ),
                    Flexible(
                      child: Text(summary,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 14)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
