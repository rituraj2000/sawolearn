import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sawolearn/Assets/assets.dart';
import 'package:sawolearn/Screens/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.landingPageBG),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          LottieBuilder.asset(
            MyAssets.SGLogo,
            width: 350,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
                width: 100,
                height: 100,
                decoration: MyAssets.redButtonDecoration,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
