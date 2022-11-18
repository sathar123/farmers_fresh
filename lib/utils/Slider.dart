

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImgSlider extends StatelessWidget {

  var img = [
    'https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/vegetables-weight-loss.jpg',
    'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2022/04/pjimage-2022-04-26t124613-1650957376.jpg',
    'https://www.verywellfit.com/thmb/reyFcuEFMOBrn2ftltusI7odC3k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/carrots_annotated2-a37144570fab4b4b83343e2216263ca9.jpg',
    'https://www.farmersfz.com/assets/v4/assets/safe-food/img-banner.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: img.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: NetworkImage(img[itemIndex]),fit: BoxFit.fill)
           ),
          ), options: CarouselOptions(
      viewportFraction: 1,
      autoPlay: true,
      enlargeCenterPage: false
    ),
    );
  }
}
