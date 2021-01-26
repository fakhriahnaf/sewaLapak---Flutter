import 'package:flutter/material.dart';
import 'package:sewaLapak/pages/error-page.dart';
import 'package:sewaLapak/theme.dart';
import 'package:sewaLapak/widget/nearest_location.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/thumbnail.png',
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),

          //TOMBOL
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/btn_back.png', width: 40)),
                Image.asset('assets/btn_wishlist.png', width: 40),
              ],
            ),
          ),

          ///KOTAK BAWAH
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),

                    //TITLE SECTION
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ruko 24 Bogor',
                                style: blackTextStyle.copyWith(fontSize: 22),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text.rich(
                                TextSpan(
                                    text: '\Rp. 150 Jt',
                                    style:
                                        maroonTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: ' / year',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16))
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/Icon_star_solid.png',
                                  width: 20),
                              SizedBox(width: 2),
                              Image.asset('assets/Icon_star_solid.png',
                                  width: 20),
                              SizedBox(width: 2),
                              Image.asset('assets/Icon_star_solid.png',
                                  width: 20),
                              Image.asset('assets/Icon_star_solid.png',
                                  width: 20),
                              Image.asset(
                                'assets/Icon_star_solid.png',
                                width: 20,
                                color: Color(0xFF989BA1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),

                    //NEAREST LOCATION
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Nearest Location',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            NearestLocation(
                              name: 'Jalan Toll',
                              imageUrl: 'assets/icon_toll.png',
                              total: 10,
                            ),
                            NearestLocation(
                              name: 'Pusat Kota',
                              imageUrl: 'assets/icon_town.png',
                              total: 2,
                            ),
                            NearestLocation(
                              name: 'Luas area',
                              imageUrl: 'assets/icon_expand.png',
                              total: 100,
                            ),
                          ]),
                    ),
                    SizedBox(height: 30),

                    //PHOTO SECTION
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Photos',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 88,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        SizedBox(
                          width: edge,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image.asset(
                            'assets/photos1.png',
                            width: 110,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14),
                        Image.asset(
                          'assets/photos2.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 14),
                        Image.asset(
                          'assets/photos3.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 14),
                        Image.asset(
                          'assets/photos4.png',
                          width: 110,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 24),
                      ]),
                    ),
                    SizedBox(height: 30),

                    //LOCATION SECTION
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Location',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jl. sama kamu yuk no. 20 \nBogor',
                                style: greyTextStyle.copyWith(fontSize: 15)),
                            InkWell(
                                onTap: () {
                                  // launchUrl(
                                  //     'https://goo.gl/maps/mS4QD7SoNNyaKfe48');
                                  launchUrl('hahahihi');
                                },
                                child: Image.asset('assets/btn_location.png',
                                    width: 40)),
                          ]),
                    ),
                    SizedBox(height: 40),

                    //TOMBOL BOOKING
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: edge),
                      height: 50,
                      width: MediaQuery.of(context).size.width - (2 * edge),
                      child: RaisedButton(
                        onPressed: () {},
                        color: maroonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        child: Text(
                          'Book Now',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: edge),
                      height: 50,
                      width: MediaQuery.of(context).size.width - (2 * edge),
                      child: RaisedButton(
                        onPressed: () {
                          launchUrl('tell:+6281931110141');
                        },
                        color: maroonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        child: Text(
                          'Call',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
