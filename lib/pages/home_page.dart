import 'package:flutter/material.dart';
import 'package:random_exploration/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Profile Picture",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/primary.png', width: 140),
                SizedBox(height: 16),
                Text(
                  'Anne Margaritha',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: primaryColor),
                ),
                SizedBox(height: 4),
                Text('UX Designer',
                    style: TextStyle(fontSize: 16, color: greyColor)),
                SizedBox(height: 70),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset('assets/images/item.png', width: 80),
                    Image.asset('assets/images/item(1).png', width: 80),
                    Image.asset('assets/images/item(2).png', width: 80),
                    Image.asset('assets/images/item(3).png', width: 80),
                    Image.asset('assets/images/item(4).png', width: 80),
                    Image.asset('assets/images/item(5).png', width: 80),
                  ],
                ),
                SizedBox(height: 70),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  width: 224,
                  height: 55,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                                padding: EdgeInsets.symmetric(vertical: 50),
                                height: 290,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50))),
                                child: Column(
                                  children: [
                                    Text(
                                      'Update Photo',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      'You are only able to change\nthe picture profile once',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: greyColor, fontSize: 18),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      width: 224,
                                      height: 55,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        onPressed: () {},
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        color: orangeColor,
                                      ),
                                    )
                                  ],
                                ),
                              ));
                    },
                    color: Colors.white,
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
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
}
