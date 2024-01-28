import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:lavilla/pantallas/home_screen.dart';
import 'dart:ui' as ui;

import 'package:lavilla/widgets/custom_google_maps.dart';

class CustomCardFunctions extends StatelessWidget {
  const CustomCardFunctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 120,
      child: Swiper(itemCount: 1,
      layout: SwiperLayout.DEFAULT,
      itemWidth: size.width * 0.6,
      itemHeight: size.height * 0.8,
      indicatorLayout: PageIndicatorLayout.COLOR,
       autoplay: true,
        pagination: const SwiperPagination(
          margin: EdgeInsets.symmetric(vertical: 5)
        ),
      
      itemBuilder: (_ , int index){

        return GestureDetector(
          /* onTap: () => Navigator.push(context, _), */
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: const FadeInImage(
                fit: BoxFit.cover,
                placeholder: NetworkImage('https://images.pexels.com/photos/753994/pexels-photo-753994.jpeg?cs=srgb&dl=pexels-rakicevic-nenad-753994.jpg&fm=jpg'), 
                image: NetworkImage('https://images.pexels.com/photos/753994/pexels-photo-753994.jpeg?cs=srgb&dl=pexels-rakicevic-nenad-753994.jpg&fm=jpg')),
            ),
          ),
        );
      },
      ),
      
      
    );
  }
}
