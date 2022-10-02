import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/screens/second_page.dart';
import 'package:weather/utils/fonts.dart';
import 'package:weather/utils/images.dart';
import 'package:weather/utils/models.dart';

String now = 'Now';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFEEACF),
                    Color(0xFFFEBB80),
                  ]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 180.w,
                      height: 16.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Image.asset(MyImages.image_search),
                          SizedBox(
                            width: 52.w,
                          ),
                          Image.asset(MyImages.image_vaigator),
                          SizedBox(
                            width: 40.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    InkWell(
                      onTap: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Second_Page(),
                          ),
                        );},
                      child: Container(child: Image.asset(MyImages.image_drawer),height: 14.h,),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      'Stockholm,\nSweden',
                      style: Myfonts.samiBold.copyWith(fontSize: 28),
                    ),
                    subtitle: Text(
                      'Tue, Jun 30',
                      style: Myfonts.regular.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Image.asset(MyImages.image_cloud),
                      width: 150.w,
                      height: 150.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "19",
                              style: Myfonts.bold.copyWith(fontSize: 64),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30).r,
                              child: Image.asset(MyImages.image_celsi),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 50, right: 14).r,
                          child: Text(
                            'Rainy',
                            style: Myfonts.regular.copyWith(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                RowHolder(MyImages.image_rain_fall, 'RainFall', '3cm'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_wind, 'Wind', '19km/h'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_humidity, 'Humidity', '64%'),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Today',
                      style: Myfonts.bold.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Tomorrow',
                      style: Myfonts.regular.copyWith(
                        fontSize: 16,
                        color: Color(0xFFD6996B),
                      ),
                    ),
                    SizedBox(
                      width: 42.w,
                    ),
                    Text(
                      'Next 7 Days',
                      style: Myfonts.regular.copyWith(
                        fontSize: 16,
                        color: Color(0xFFD6996B),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFD6996B),
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Image.asset(MyImages.image_seperate),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10).r,
                  height: 100.h,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return TimeWeather(TimeClass.times[index]);
                    },
                    itemCount: TimeClass.times.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget RowHolder(String imageName, String word, String word1) {
    return Container(
      padding: const EdgeInsets.only(top: 5).r,
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Image.asset(imageName),
          SizedBox(
            width: 8.w,
          ),
          Text(word),
          SizedBox(
            width: 100.w,
          ),
          Text(word1),
        ],
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFCDEC8),
        borderRadius: BorderRadius.circular(18),
      ),
      width: 205.w,
      height: 40.h,
    );
  }

  Widget TimeWeather(TimeClass times) {
    return Container(
      padding: const EdgeInsets.only(top: 5).r,
      margin: const EdgeInsets.all(4).r,
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Text(times.time),
          SizedBox(
            height: 8.h,
          ),
          Image.asset(times.image),
          SizedBox(
            height: 2.h,
          ),
          Text(times.celsi),
        ],
      ),
      decoration: BoxDecoration(
        color: times.time == 'Now'
            ? const Color(0xFFFEEAD9)
            : const Color(0xFFFECFA6),
        borderRadius: BorderRadius.circular(18),
      ),
      width: 40.w,
      height: 10.h,
    );
  }
}
