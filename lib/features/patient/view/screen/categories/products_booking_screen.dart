import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/categories/products_booking_widget.dart';

class ProductsBookingScreen extends StatelessWidget {
  const ProductsBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.secondaryGrey,
        flexibleSpace: Container(
          color: ColorManager.secondaryGrey,
        ),
        title: ContainerHeaderWidget(
          textContainer: 'Products booking',
          imageContainer: Assets.iconsArrowBack,
        ),
        toolbarHeight: 121.h,
      ),
      body: Padding(
        padding: REdgeInsetsDirectional.only(start: 18.w, end: 25.w, top: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductsBookingWidget(image: Assets.imagesBooking1),
              ProductsBookingWidget(
                image: Assets.imagesBooking2,
              ),
              ProductsBookingWidget(
                image: Assets.imagesBooking3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
