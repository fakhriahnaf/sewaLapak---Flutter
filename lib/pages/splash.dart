import 'package:flutter/material.dart';
import 'package:sewaLapak/pages/HomePage.dart';
import 'package:sewaLapak/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/bottom_backgroundd.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //biar gak berubah
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Carilah lapak usahamu \ndengan mudah',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kemudahan mencari tempat usaha \nhanya dengan satu genggaman',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()
                            ),
                        );
                      },
                      color: maroonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Explore Now',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
