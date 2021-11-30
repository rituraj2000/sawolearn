import 'package:flutter/material.dart';
import 'package:sawolearn/Assets/assets.dart';
import 'package:sawolearn/Models/custom_user.dart';

class PlayerDetailsScreen extends StatefulWidget {
  UserData user;
  PlayerDetailsScreen({required this.user});

  @override
  _PlayerDetailsScreenState createState() => _PlayerDetailsScreenState();
}

class _PlayerDetailsScreenState extends State<PlayerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            //Login Options
            Expanded(
              flex: 20,
              child: Container(
                padding: const EdgeInsets.fromLTRB(45, 0, 30, 0),
                height: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //Top Black Bar
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(bottom: Radius.circular(7)),
                          color: Colors.black,
                        ),
                        height: 7,
                        width: 120,
                      ),
                      SizedBox(height: 40),
                      //ProfileImage
                      const Image(
                        width: 120,
                        fit: BoxFit.contain,
                        image: AssetImage(MyAssets.pl1),
                      ),
                      SizedBox(height: 40),
                      //Name
                      const Text(
                        'Seong Gi-Hun',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      //User Data
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.pink,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Personal Details',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Created:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '${widget.user.createdOn}'.substring(1, 10),
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Nationality:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            'Indian',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      //Age, Hgt, Wgt
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'age:',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            '35',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Height:',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            '35',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight:',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            '35',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      //Status
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.pink,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Status:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Playing',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.red.shade50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Rank:',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            '020',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      //Game Results
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Rank:',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 20),
                          const Text(
                            '020',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Zipper
            Expanded(
              flex: 1,
              child: Container(
                width: 10,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            //Cloth Texture
            Expanded(
              flex: 10,
              child: Container(
                padding: const EdgeInsets.only(top: 100),
                width: 10,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyAssets.cloth),
                    fit: BoxFit.fill,
                  ),
                  // color: Color(0xFF009E91),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Colors.grey,
                    height: 60,
                    width: 100,
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
