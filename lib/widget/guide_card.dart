import 'package:flutter/material.dart';
import 'package:sewaLapak/models/tips.dart';
import 'package:sewaLapak/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl, width: 80),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tips.title,
                style: blackTextStyle.copyWith(fontSize: 18)),
            SizedBox(height: 4),
            Text(
              tips.updatedAt,
              style: greyTextStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
      ],
    );
  }
}
