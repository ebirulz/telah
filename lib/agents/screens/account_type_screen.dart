import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({Key? key}) : super(key: key);

  @override
  _AccountTypeScreenState createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {

  int? selectedAcccountType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 112,
              child: Image.asset('assets/images/welcome_logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 250,
              child: Text(
                  'How are you planning to use TELAH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  )
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              //width: 250,
              child: Text(
                  'This will help us streamline your setup experience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )
              ),
            ),

            const SizedBox(
              height: 16,
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
                    onTap: () {

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
    );
  }
}
