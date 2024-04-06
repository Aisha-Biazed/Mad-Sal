import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/app_image.dart';
import '../../../../../generated/assets.dart';
import 'blur.dart';

class CarousalStore extends StatelessWidget {
  const CarousalStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 136.h,
            enlargeCenterPage: true,
            viewportFraction: 0.4,
          ),
          items: [
            Assets.imagesPayment1,
            Assets.imagesPayment2,
            Assets.imagesVisa,
          ].map((imageAsset) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 182.w,
                  height: 136.h,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AppImage.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(left: 0, top: 20.h, bottom: 0, width: 50.w, child: Blur()),
        Positioned(right: 0, top: 20.h, bottom: 0, width: 50.w, child: Blur())
      ],
    );
  }
}
