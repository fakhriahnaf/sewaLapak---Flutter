import 'package:flutter/material.dart';
import 'package:sewaLapak/models/space.dart';
import 'package:sewaLapak/pages/detail_page.dart';
import 'package:sewaLapak/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage()
            ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: maroonColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Icon_star_solid.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(height: 3),
              Text.rich(
                TextSpan(
                    text: '\Rp. ${space.price} Jt',
                    style: maroonTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                          text: ' / year',
                          style: greyTextStyle.copyWith(fontSize: 16))
                    ]),
              ),
              SizedBox(height: 5),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
