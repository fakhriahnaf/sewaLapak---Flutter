import 'package:flutter/material.dart';
import 'package:sewaLapak/theme.dart';
import 'package:sewaLapak/models/city.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xFFF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: maroonColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30)
                      )
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/Icon_star_solid.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ) ,
                ) : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
