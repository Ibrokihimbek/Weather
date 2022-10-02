import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/utils/fonts.dart';
import 'package:weather/utils/images.dart';
import 'package:weather/utils/models.dart';

String now = 'Now';

class Second_Page extends StatefulWidget {
  const Second_Page({super.key});

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
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
                Container(
                  width: double.infinity.w,
                  height: 16.h,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 48.w,
                      ),
                      Text(
                        'Next 7 Days',
                        style: Myfonts.regular.copyWith(fontSize: 24),
                      ),
                      SizedBox(
                        width: 52.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEEAD9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            'Tommorow',
                            style: Myfonts.samiBold.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            width: 75.w,
                          ),
                          Text(
                            '22',
                            style: Myfonts.bold.copyWith(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6).r,
                            child: Icon(
                              Icons.circle_outlined,
                              size: 8,
                            ),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Image.asset(MyImages.image_cloud_1)
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 26.w,
                          ),
                          Image.asset(MyImages.image_rain_fall),
                          SizedBox(
                            width: 12.w,
                          ),
                          Image.asset(MyImages.image_wind),
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10).r,
                            child: SvgPicture.asset(MyImages.svg_humidity),
                            width: 40.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 38.w,
                          ),
                          Text('1cm'),
                          SizedBox(
                            width: 34.w,
                          ),
                          Text('15 km/h'),
                          SizedBox(
                            width: 34.w,
                          ),
                          Text('50 %'),
                        ],
                      ),
                    ],
                  ),
                  width: 205.w,
                  height: 120.h,
                ),
                SizedBox(
                  height: 16.h,
                ),
                RowHolder(MyImages.image_cloud_3, 'Thursday', '21 °'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_cloud_3, 'Friday', '24 °'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_cloud_1, 'Saturday', '18 °'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_cloud_2, 'Sunday', '12 °'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_cloud_2, 'Monday', '16 °'),
                SizedBox(
                  height: 5.h,
                ),
                RowHolder(MyImages.image_cloud_1, 'Tuesday', '18 °'),
                SizedBox(
                  height: 18.h,
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
            width: 12.w,
          ),
          Text(word),
          word == 'Friday' ? SizedBox(
            width: 110.w ,
          ): SizedBox(width: 100.w,),
          Text(word1),
          SizedBox(
            width: 8.w,
          ),
          Image.asset(imageName),
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
}
