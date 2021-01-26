import 'package:flutter/material.dart';
import 'package:sewaLapak/pages/HomePage.dart';
import 'package:sewaLapak/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon-error.png',
                    width: 300,
                  ),
                  SizedBox(height: 70),
                  Text('Where are you going?',
                      style: blackTextStyle.copyWith(fontSize: 24)),
                  SizedBox(height: 14),
                  Text(
                    'Seems like the page that you were \nrequest is already gone',
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()
                              ),
                            (route) => false);
                      },
                      color: maroonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      child: Text(
                        'Back to Home',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
