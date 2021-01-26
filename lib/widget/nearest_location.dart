import 'package:flutter/material.dart';
import 'package:sewaLapak/theme.dart';

class NearestLocation extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  NearestLocation({this.name, this.imageUrl, this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          this.imageUrl,
          width: 32,
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
              text: '   ${this.total}',
              style: maroonTextStyle.copyWith(fontSize: 14),
              children: [
                TextSpan(
                    text: ' Km \n${this.name}',
                    style: greyTextStyle.copyWith(fontSize: 14))
              ]),
        ),
      ],
    );
  }
}
