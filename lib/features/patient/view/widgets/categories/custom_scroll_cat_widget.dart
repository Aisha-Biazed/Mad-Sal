import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'card_image_widget.dart';

class CustomScrollCatWidget extends StatelessWidget {
  const CustomScrollCatWidget(
      {Key? key,
      required this.image1,
      required this.image2,
      required this.description})
      : super(key: key);
  final String description;
  final String image1;
  final String image2;
  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 400,
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                RSizedBox(
                  height: 194,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardImageWidget(
                        image: image1,
                        description: description,
                      ),
                      10.horizontalSpace,
                      CardImageWidget(
                        image: image2,
                        description: description,
                      ),
                      10.horizontalSpace,
                      CardImageWidget(
                        image: image1,
                        description: description,
                      ),
                    ],
                  ),
                ),
                RSizedBox(
                  height: 194,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardImageWidget(
                        image: image1,
                        description: description,
                      ),
                      10.horizontalSpace,
                      CardImageWidget(
                        image: image2,
                        description: description,
                      ),
                      10.horizontalSpace,
                      CardImageWidget(
                        image: image1,
                        description: description,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
