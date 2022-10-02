import 'package:matcher/matcher.dart';
import 'package:weather/utils/images.dart';

class TimeClass {
  String time;
  String image;
  String celsi;

  TimeClass({required this.time, required this.image, required this.celsi});

  static List<TimeClass> times = [
    TimeClass(time: '11:00', image: MyImages.image_cloud_2, celsi: '20'),
    TimeClass(time: 'Now', image: MyImages.image_cloud_1, celsi: '19'),
    TimeClass(time: '13:00', image: MyImages.image_cloud_3, celsi: '21'),
    TimeClass(time: '14:00', image: MyImages.image_cloud_3, celsi: '20'),
    TimeClass(time: '15:00', image: MyImages.image_cloud_2, celsi: '20'),
    TimeClass(time: '16:00', image: MyImages.image_cloud_2, celsi: '19'),
  ];
}
