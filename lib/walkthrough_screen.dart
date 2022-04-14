import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:telah/intro_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool? isActive;
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  List<Widget> buildDotIndicator() {
    List<Widget> list = [];
    for (int i = 0; i <= 2; i++) {
      list.add(i == pageChanged ? sDDotIndicator(isActive: true) : sDDotIndicator(isActive: false));
    }

    return list;
  }

  Widget sDDotIndicator({required bool isActive}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: isActive ? 8.0 : 6.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 8.0 : 6.0,
      decoration: BoxDecoration(color: isActive ? Colors.blue : const Color(0xFF7E869B), borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: (){
                    pageController.animateToPage(2, duration: const Duration(milliseconds: 600), curve: Curves.linear);
                  },
                  splashColor: Colors.blue[50],
                  child: const Text(
                    "SKIP",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.7,
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                });
              },
              controller: pageController,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                      child: Image(
                        image: const AssetImage('assets/images/1.png'),
                        height: size.height * 0.3,
                        width: size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Awesome feature 1', textAlign: TextAlign.center, style: boldTextStyle(size: 25)),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text('Lorem ipsum dolor sit amet is a \n dummy text used in print and digital', textAlign: TextAlign.center, style: secondaryTextStyle(size: 16)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                      child: Image(
                        image: const AssetImage('assets/images/2.png'),
                        height: size.height * 0.3,
                        width: size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Choose your interest', textAlign: TextAlign.center, style: boldTextStyle(size: 25)),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text('You can easy to customize your \ncontent match with your interest', textAlign: TextAlign.justify, style: secondaryTextStyle(size: 16)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                      child: Image(
                        image: const AssetImage('assets/images/3.png'),
                        height: size.height * 0.3,
                        width: size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Choose your interest', textAlign: TextAlign.center, style: boldTextStyle(size: 25)),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text('You can easy to customize your \ncontent match with your interest', textAlign: TextAlign.justify, style: secondaryTextStyle(size: 16)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: buildDotIndicator()),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageChanged != 2
                    ? InkWell(
                  child: const CircleAvatar(
                    radius: 25,
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                    backgroundColor: Colors.blue,
                  ),
                  onTap: () {
                    pageController.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
                  },
                )
                    : Padding(
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
                        highlightColor: Colors.blue.shade400,
                        onTap: () {
                          const IntroScreen().launch(context);
                        },
                        child: const Center(
                          child: Text(
                            "GET STARTED",
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
          )
        ],
      ),
    );
  }
}
