import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sawo/sawo.dart';
import 'package:sawolearn/Assets/assets.dart';
import 'package:sawolearn/Models/customUser.dart';
import 'package:sawolearn/Screens/onboard.dart';
import 'package:sawolearn/Screens/player_detail.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Sawo Auth
  Sawo _sawo = Sawo(
    apiKey: MyAssets.sawoAPIkey,
    secretKey: MyAssets.sawoSecretkey,
  );
  String user = "";
  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Login Failed :(";
    }

    setState(() {
      user = payload;
    });

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlayerDetailsScreen(
              user: userDataFromJson(payload),
              playerNum: plnum,
            )));
  }

  //Generate Random Number for Seriel Number
  int plnum = Random().nextInt(3) + 1;

  //Verification Mode Selector
  bool _isphoneselcted = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 150),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyAssets.landingPageBG),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Logo
            LottieBuilder.asset(
              MyAssets.SGLogo,
              width: 300,
            ),
            // Login Column
            Column(
              children: <Widget>[
                //Login Text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                //Phone Button
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isphoneselcted = true;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    margin: const EdgeInsets.all(7),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red.withOpacity(0.2),
                            // offset: Offset(2, 2),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ],
                      color:
                          _isphoneselcted ? Colors.red.shade700 : Colors.white,
                      border: Border.all(color: Colors.red.shade700, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: _isphoneselcted
                            ? Colors.white
                            : Colors.red.shade300,
                      ),
                    ),
                  ),
                ),
                //Email Button
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isphoneselcted = false;
                    });
                  },
                  child: Container(
                    width: 80,
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red.withOpacity(0.2),
                            // offset: Offset(2, 2),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ],
                      color:
                          _isphoneselcted ? Colors.white : Colors.red.shade700,
                      border: Border.all(color: Colors.red.shade700, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: _isphoneselcted
                            ? Colors.red.shade300
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            //Login Button
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  _sawo.signIn(
                    context: context,
                    identifierType:
                        _isphoneselcted ? 'phone_number_sms' : 'email',
                    callback: payloadCallback,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(90, 20, 60, 10),
                  width: 350,
                  decoration: MyAssets.greenLoginBtnDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Continue',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.3),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: const Text(
                          'Player',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: MyAssets.playerGrnColor,
                          ),
                        ),
                      ),
                    ],
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
