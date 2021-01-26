import 'package:flutter/material.dart';
import 'package:sewaLapak/models/space.dart';
import 'package:sewaLapak/models/tips.dart';
import 'package:sewaLapak/theme.dart';
import 'package:sewaLapak/widget/bottom_navbar.dart';
import 'package:sewaLapak/widget/city_card.dart';
import 'package:sewaLapak/models/city.dart';
import 'package:sewaLapak/widget/guide_card.dart';
import 'package:sewaLapak/widget/space_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            //HEADER ATAS
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
                ),
            ),
            SizedBox( height: 3),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'mencari tempat usaha terbaik anda',
                style: greyTextStyle.copyWith(fontSize: 16),
                ),
            ),
            SizedBox(height: 30),

            //POPULAR CITY
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: blackTextStyle.copyWith(fontSize: 16),
                ),
            ),
            SizedBox(height: 16),
            //container list city
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1, 
                      name: 'Jakarta', 
                      imageUrl: 'assets/city1.png',
                      isPopular: true)
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 2, 
                      name: 'Bali', 
                      imageUrl: 'assets/city2.png')
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 3, 
                      name: 'Surabaya', 
                      imageUrl: 'assets/city3.png')
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
        
            //RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recomended Choice',
                style: blackTextStyle.copyWith(fontSize: 16),
                ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Ruko Margaretta',
                      price: 50,
                      rating: 4,
                      city: 'Bandung',
                      country: 'Jawa Barat',
                      imageUrl: 'assets/space1.png',
                    )
                  ),
                  SizedBox(height: 10),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Ruko 24 Bogor',
                      price: 100,
                      rating: 4,
                      city: 'Bogor',
                      country: 'Jawa Barat',
                      imageUrl: 'assets/space2.png',
                    )
                  ),
                  SizedBox(height: 10),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Ruko House Dramaga',
                      price: 150,
                      rating: 4,
                      city: 'Bandung',
                      country: 'Jawa Barat',
                      imageUrl: 'assets/space3.png',
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            //GUIDENCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Guide and Tips',
                style: blackTextStyle.copyWith(fontSize: 16),
                ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Memilih tempat terbaik',
                      updatedAt: '21 Januari 2021',
                      imageUrl: 'assets/tips1.png'
                    )
                  ),
                  SizedBox(height: 10),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Bagaimana untuk \nmemulai usaha \nyang baik',
                      updatedAt: '21 Januari 2021',
                      imageUrl: 'assets/tips2.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 + edge),
            
          ],
        ),
      ),
       floatingActionButton:  Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(horizontal: edge),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_home_active.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_messages.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_news.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_favorite.png',
                      isActive: false,
                    ),

                ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}